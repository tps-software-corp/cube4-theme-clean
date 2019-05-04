# Docker for eccube template development

1. Clone this repository inside template source code
2. Build docker image
```
docker-compose build
```
3. Run docker
```
docker-compose up -d
```
4. Install eccube4
```
Goto http://localhost:8080
```
5. Add template recorde
```
Goto http://localhost:8082
Add new record to table: dtb_template
---
INSERT INTO `dtb_template` (`device_type_id`, `template_code`, `template_name`, `create_date`, `update_date`, `discriminator_type`) VALUES ('10', 'TPS', 'TPS', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'template');
```
6. Active template
```
Goto http://localhost:8080/%admin_url%/store/template
```