# CryptoWallet
## Sobre
![Apresentação do projeto](/public/screenshot-welcome.png)
O projeto **CryptoWallet** é um site de criptomoedas desenvolvido durante o módulo 3 do curso [**Ruby on Rails 5.x - Do início ao fim!**](https://www.udemy.com/course/rubyonrails-5x/) do Jackson Pires com o intuito de colocarmos em prática todo conteúdo estudado durante o módulo.

## Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/) (2.5.0)
- [Rails](https://rubyonrails.org/) (5.2.8.1)
- [SQLite3](http://www.sqlite.org) (3.37.2)

## Ferramentas utilizadas
- [Rails-I18n](https://github.com/svenfuchs/rails-i18n) para internacionalização

## Instruções para uso
Clone o projeto em sua máquina e instale as dependências do projeto com os comandos:
```bash
bundle
yarn
```

Logo após, crie o banco de dados com:
```bash
rails db:create
rails db:migrate
```

Para inicializar o banco de dados com dados, rode:
```bash
rails dev:db_reset
```

Levante e rode a aplicação com:
```bash
rails s
```
E, finalmente, acesse ```http://localhost:3000``` no seu navegador.