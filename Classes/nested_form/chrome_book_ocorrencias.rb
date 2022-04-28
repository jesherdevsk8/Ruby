# local da mudança http://127.0.0.1:3000/chrome_books/46/editar
# Semelhante ao https://sgo.redeclaretiano.edu.br/operadores/503/editar

# dentro de chrome_book.rb |s foi feito para relacionamento do model chrome_book_ocorrencia.rb

# Associacoes
has_many :chrome_book_ocorrencias, dependent: :destroy

# Nested Form
accepts_nested_attributes_for :chrome_book_ocorrencias, allow_destroy: true


# Crie uma migration
rails g migration CreateChromeBookOcorrencias

# Edite a migration abaixo
class CreateChromeBookOcorrencias < ActiveRecord::Migration[6.0]
  def change
    create_table :chrome_book_ocorrencias do |t|
      t.references :chrome_book, foreign_key: true
      t.string :motivo
      t.string :respaldo_tecnico
      t.datetime :data_entrega
      t.datetime :data_avaliacao

      t.timestamps
    end
  end
end

# Execute rails db:migrate após criar essa migration
# Se errou em algo após o migrate, execute: rake db:rollback step=1

# Cria um model para conexao com banco chamadado,
# chrome_book_ocorrencia.rb
class ChromeBookOcorrencia < ApplicationRecord
    belongs_to :chrome_book  # pertence a tabela chrome_book

    validates :motivo, presence: true, length: {maximum: 255}

end

# em chrome_books_controller.rb adicione

# Permitir somente parâmetros úteis
  def chrome_book_params
    params.require(:chrome_book).permit(
      :descricao,
      :numero_serie,
      :patrimonio,
      :observacao,
      :nota_fiscal,
      :contexto_id,
      :ativo,
      :data_inicio_garantia,
      :data_fim_garantia,
      chrome_book_ocorrencias_attributes: [
        :id, 
        :motivo,
        :respaldo_tecnico,
        :data_entrega,
        :data_avaliacao,
        :_destroy
      ]
    )
  end
  
# Testar relacionamento das tabelas no rails console

# Criar dados na tabela
ChromeBookOcorrencia.create!(chrome_book_id: 1026, motivo: "motivo qualquer", respaldo_tecnico: "esta errado")

# Pegar um id do ChromeBook cadastrado na tabela chrome_books
ChromeBook.find(1026).chrome_book_ocorrencias

# Alterando coluna da tabela
bin/rails generate migration AddDataAberturaChromeBooksOcorrencias

# Migration gerada -  adicione a coluna que deseja adicionar na tabela dentro da class
class AddDataAberturaChromeBooksOcorrencias < ActiveRecord::Migration[6.0]
  def change
    add_column :chrome_book_ocorrencias, :data_abertura, :datetime, after: :chrome_book_id
  end
end
# Após execute rails db:migrate
  
# Formulário _form.html.erb
#Colocar nested_form_for no fomulario para funcionar o link_to_add e link_to_remove

	<div class="page-header">
    <h4>
      <%= f.link_to_add :chrome_book_ocorrencias, class: 'btn btn-primary', data: { :target => "#ocorrencias-chrome", toggle: 'tooltip'}, title: "Adicionar Nova Ocorrência"  do %>
        <i class="fa fa-plus" style="font-size: 21px;"></i>
      <% end %> 
      Ocorrências<small> Observações </small>      
    </h4>
  </div>
  <div id="ocorrencias-chrome">
    <%= f.fields_for :chrome_book_ocorrencias do |observacoes| %>
      <div class="pre">
        <div class="row">
          <div class="col-md-2">
            <i class="fa fa-calendar"></i>
            <%= observacoes.label :data_abertura, 'Data Abertura' %>
            <%= observacoes.text_field :data_abertura, class: 'form-control datepicker', required: true %>
          </div>
          <div class="col-sm-8 col-xs-2">
            <%= observacoes.label :motivo, 'Motivos' %>
            <%= observacoes.text_field :motivo, class: 'form-control', maxlength: 150, required: true %>
          </div>
          <div class="col-md-2">
            <i class="fa fa-calendar"></i>
            <%= observacoes.label :data_entrega, 'Data Entrega Aluno' %>
            <%= observacoes.text_field :data_entrega, class: 'form-control datepicker', required: true %>
          </div>        
        </div>
        <div class="row">
          <div class="col-md-2">
            <i class="fa fa-calendar"></i>
            <%= observacoes.label :data_avaliacao, 'Data Avaliação Técnica' %>
            <%= observacoes.text_field :data_avaliacao, class: 'form-control datepicker', required: true %>
          </div>
          <div class="col-md-8">
            <%= observacoes.label :respaldo_tecnico, 'Respaldo Técnico'%>
            <%= observacoes.text_field :respaldo_tecnico, class: 'form-control', maxlength: 150, required: true %>
          </div>
          <div class="col-md-2 text-right">           
            <%= observacoes.link_to_remove class: 'btn btn-lg btn-danger', data: { :target => "#ocorrencias-chrome", toggle: 'tooltip'}, title: "Remover Ocorrência"  do %>
              <i class="fa fa-trash" style="font-size: 32px;"></i>
            <% end %>
          </div>
        </div>
      </div>
    <% end %>
  </div>


