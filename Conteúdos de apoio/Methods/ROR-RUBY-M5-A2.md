## **Gems**

### **O que são?**

Gem é um pacote que oferece funcionalidades a fim de resolver uma necessidade específica de um programa Ruby. Pense como o conceito de **biblioteca** em outras linguagens de programação.

 

## **Trabalhando com gems**

### **Como instalar uma gem**

1- Para instalar uma **gem **execute em seu terminal

```
gem install os
```

Você instalou a gem **os. **Ela é uma biblioteca para você extrair informações sobre o PC que você está usando (exp: Sistema operacional, quantidade de cores e etc).

 

**Novas Funcionalidades**

1- Crie um arquivo chamado **os.rb** e adicione o código

```
require 'os'

def my_os  
  if OS.windows?
    'Windows'
  elsif OS.linux?
    'Linux'
  elsif OS.mac?
    'Osx'
  else
    'Não consegui Identificar'
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"
```

No começo do arquivo, o require ‘gem_name’ carrega os arquivos da gem. Isso possibilita a declaração de códigos com funcionalidades da biblioteca.



obs: Para saber como utilizar uma gem consulte sua documentação.

 

**Desinstalar uma gem**

1- Para desinstalar uma gem utilize o comando

```
gem uninstall gem_name
```

Ex:

```
gem uninstall os
```



**Informação**

1- Liste todas as gems instaladas na máquina rodando

```
gem list
```



**Bundler**

Para ter controle sobre as dependências de um projeto contamos com uma ferramenta que procura e instala gems chamada Bundler.

 

1- Crie um projeto chamado **first_project**

```
mkdir first_project
cd first_project
```



2- O bundler também é uma gem. Para instalá-lo rode

```
gem install bundler
```



3- Salve a lista de gems do projeto em um arquivo chamado **Gemfile**

```
source 'https://rubygems.org'

gem 'os'
```

Na primeira linha é definido onde o bundle deve procurar pelas gems.

Depois é listado as dependências do projeto.

 

4- Instale estas gems com o comando.

```
bundle install
```

Assim, qualquer pessoa envolvida no projeto pode facilmente instalar suas dependências.