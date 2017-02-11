## Описание
Тестовое задание (реализация стены сообщений + древовидные комментарии)  
Вход только через facebook

## Запуск 
Для разворачивания своей копии, клонируйте репозиторий `git clone git@github.com:exwarvlad/demo-wall.git`  
или просто [скачайте](https://github.com/exwarvlad/demo-wall/archive/master.zip)  
Для работы авторизации через faceebok, потребуется указать ключи в Вашей среде переменных  
или в настройках на heroku:  
*FACEBOOK_APP_ID*  
*FACEBOOK_APP_SECRET*  
Что бы взять ключи, Вы должны зарегистрировать в своем аккаунте facebook  
новое приложение https://developers.facebook.com и взять со страницы этого приложения данные настройки!  
Для запуска требуются:  
Ruby >= 2.3.0  
Rails ~> 4.2.6  
Перед запуском выполните  
`bundle install --without production`  
`bundle exec rake db:migrate`  
## Желательные ОС  
**Linux**
