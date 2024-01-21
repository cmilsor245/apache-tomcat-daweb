#!/bin/bash

export AWS_ACCESS_KEY_ID=ASIAU3RBYFCARKIVV2UR
export AWS_SECRET_ACCESS_KEY=lv69S7yVlZ4/FjutRsx1i39bM84gAp4b+8cLH3EF
export AWS_SESSION_TOKEN=FwoGZXIvYXdzEIj//////////wEaDMQ8YhJH+ROiikesRyLCAf2QG7aQT0pGixfOJUa13iHTqvSHby6LgERQ+MpfiwAss+7jXN9lF01YErnBJHOKKx7StuGDJf8KaK4fJhX/8Ir7Dhs3JGWHhTkfxsWdevF4O0NFwXqWCoO5xB3OkG0hkkm2FeO/mLXORY2lXKp1SMbEtLmNoW8RxTBW/sLUHJt0zTjVaIyayY7MItefiWcy6tbM18S1w4p2w1HVK6g8cTorkXYGOBAj0wT0GD4V9zP2fi9NZbct5hboCkgv8tpOK+NtKN3dtK0GMi3mVLMqmKzX8bFs7reQAjUPkXuIdQMbwZWL1bwt5T0gDR36hw234EClbCTWtDY=
export AWS_DEFAULT_REGION=us-east-1

aws cloudformation deploy \
--template-file ../basic-stack-yaml/main.yml \
--stack-name "tomcat" \
--capabilities CAPABILITY_NAMED_IAM