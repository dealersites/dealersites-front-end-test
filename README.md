# Dealer Sites - Test

## Requisitos:

- [Lando](https://docs.lando.dev/basics/installation.html) -> https://docs.lando.dev/basics/installation.html
- - Lando é uma abstração de **DOCKER** que facilita a vida de usuários iniciantes e Devs avançados é mais fácil de usar do que o **Docker Compose**
- Ou [Docker-compose](https://docs.docker.com/compose/install/) -> https://docs.docker.com/compose/install/
- [Docker](https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-18-04-pt) -> https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-18-04-pt
- Usar framework Bootstrap
- Usar algum framerwork PHP (Laravel, Symfony, Cake PHP etc). Neste teste, estamos disponibilizando uma aplicação em laravel pronta para rodar a rota home ao qual será necessário criar o layout da página home que será o seu teste.
- Além disso, será gerado um banco de dados com algumas tabelas com informações já populadas para uso no teste. 
- Embora o banco de dados esteja pronto e disponível, você terá que criar os relacionamentos no framework para buscar esses dados e passar para sua view no front-end. Use da forma que achar melhor.
- Caso deseje usar outro framework em seu teste, sinta-se a vontade. O SQL com o banco de dados e os dados necessários estão na pasta **sql** na raiz do teste. As imagens com o layout estão no diretório **layout-template** localizada também na raiz do projeto.

### Caso não deseje usar docker para provisionar seu ambiente, você pode usar a pilha LAMP ou qualquer método para rodar PHP, Apache e MariaDB para rodar o projeto se for da sua preferência.

## Configurando o ambiente: 

- Após a instalação do **Lando** ou **Docker-compose** e o **Docker**
- Crie uma pasta no seu diretório Documentos chamada **projetos**
- Dentro da pasta projetos execute o comando `git clone https://github.com/dealersites/dealersites-front-end-test.git`
- Entre na pasta dealersites-front-end-test
- Usando [Lando](https://docs.lando.dev/basics/installation.html)
    - Dentro da pasta dealersites-front-end-test execute o comando `lando start && lando composer install`. Aguarde a finalização do processo.
    - Uma vez finalizado, as URLs estarão disponíveis para rodar sua aplicação no navegador
    - - Essa página estará vazia pois ainda não criamos dados de test no bando
    - Para criar e polular o banco de dados rode seguinte comando:
    - - `lando php artisan import:database`    
    - PRONTO agora o projeto está disponível e rodando no seu navegador nas URLs informadas anteriormente
- Usando [Docker-compose](https://docs.docker.com/compose/install/)
    - Dentro da pasta dealersites-front-end-test execute o comando `docker-compose up -d`. Aguarde a finalização do processo.
    - Após finalizado, rode o comando `docker exec -it dealersites-test-php-fpm bash -c "composer install"`
    - Após finalizado o comando acima, rode o comando `docker exec -it dealersites-test-php-fpm bash -c "php artisan config:cache"`
    - Importe o banco de dados usando o comando `docker exec -it dealersites-test-php-fpm bash -c "php artisan import:database"`
    - Pronto. Sua aplicação estará acessível em [http://localhost](http://localhost)
    - Alguma vezes, o docker pode conflitar com permissão. Sendo assim, pode ser necessário rodar o comando `chmod -R 777 storage` na raiz do seu projeto.

## Escopo:
- Codificar a página HOME baseada na imagem de layout nos seguintes diretórios:
    - Desktop -> "layout-template/Home.png"
    - Mobile -> "layout-template/mobile/Home.png"
- O página HOME deve ser desenvolvida para telas desktop e mobile conforme imagens das pastas acima
- O formulário deve ter validação com javascript (Frameworks JS são permitidos) para campos vazios e ou inválidos. Outros requisitos sobre os campos do formulário:
    - Campo nome completo deve conter ao menos 2 palavras para ser válido
    - Campo telefone deve ter ao menos todos caracteres de um telefone válido
    - Campo telefone deve ter máscará para telefones com e ou sem o digito 9
    - Campo CNPJ ou CPF deve ter validação de número válido
    - Enviar o formulário via XHR Request (Ajax, Axios etc) para o endpoint `/contact`
    - Exibir a mensagem de sucesso no formulário após retorno da request. Não é necessário nenhuma trativa no back-end. Já existe a rota definada no framework para responder para a request.
- Os seletores no topo da página são itens em dropdown que devem puxar as informações a partir do banco de dados. Requisitos:
    - Seletor de loja deve puxar o cadastro de lojas da tabela **lojas** no banco de dados
    - Seletor de telefones deve exibir os telefones cadastrado para as lojas na tabela **loja_telefones**
- Os menus devem ser exibidos de acordo com os dados cadastros na tabela **menus**. Requisitos:
    - Em se tratando de menu pai com menu filho, deve ser gerado um menu no estilo dropdown conforme imagem **SubMenu.png**
- A seção de dados da loja conforme imagem **SectionLoja.png**, deve ser uma tab vertical que exibe os dados de cada loja. Essas informações podem ser obtidas nas tabelas **lojas**, **loja_telefones** e **loja_enderecos**.
    - Renderizar o mapa usando os embed do google maps conforme cadastrado nas tabelas acima citadas
    - Ao clicar na tab da loja desejada, deve exibir os dados da loja em questão
- Não é necessário ter os links em elementos de tag href
- Os dados que não estão nas tabelas do banco de dados, como veículos, sliders, banners etc, podem ser colocados diretamente no código html.
- As imagens para o slider, banners, veículos etc, estão localizadas no diretório `resources/images` a partir da raiz do projeto.

## Dúvidas?

Caso restar dúvidas, não hesite em nos contatar pelo e-mail **adam@dealersites.com.br**