#!/usr/bin/env ruby

class Anfitriao
	def initialize(nome = "Mundo")
		@nome = nome
	end
	def diz_ola
		puts "Olá #{@nome}!"
	end
	def diz_adeus
		puts "Adeus #{@nome}, volte sempre."
	end
end

g = Anfitriao.new("Jesher")
g.diz_ola
g.diz_adeus

