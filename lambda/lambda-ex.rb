#!/usr/bin/env ruby

nome = 'jesher'
idade = 24

languages = 'ruby'

my_lambda = -> { puts "meu nome é #{nome} e tenho #{idade} anos, gosto de programar em #{languages}" }

my_lambda.call
# my_lambda.()
# my_lambda.[]
# my_lambda.===

my_lambda_with_args = -> (value) { puts "#{nome} "+value }

my_lambda_with_args.call('Minelli Alves')


another_lambda = lambda { |result = 'Tanka'|
  puts "Olá " +result
}

another_lambda.call
another_lambda.call('Jesher')
