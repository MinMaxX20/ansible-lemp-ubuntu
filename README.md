# ansible-lemp-ubuntu

Всем привет!

**/webspark_test/playbook.yml**  - делает установку LEMP и конфигурирует 
**/webspark_test/playbook2.yml** - меняет порт ssh на 1234 
**/webspark_test/hosts.txt **    - чисто для примера, указаны айпи-адреса


**/webspark_test/vars/default.yml** - указаны переменные 
**/webspark_test/vars/MAINSERVERS** - указан юзер и путь ssh ключа 
**/webspark_test/id_rsa3 **         - ssh ключ


**/webspark_test/files/backup.sh**         - скрипт на Bash, который делает бекап и очищает логи, в Ansible, я не додумал как его автоматизировать, 
                                             поэтому предлагаю закинуть его в cron: 
                                             crontable -e 1 0 * * * root /webspark_test/files/backup.sh #будет выполняться каждый день в 00:01 
**/webspark_test/files/info.php.j2**       - для теста php, в проде не используется 
**/webspark_test/files/nginx.conf.j2**     - конфигурация nginx 
**/webspark_test/files/wp-config.php.j2**  - конфигурация wordpress
