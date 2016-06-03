#!/bin/bash
cat > workflows-demo-task-definition.json <<EOF
[
    {
      "volumesFrom": [],
      "memory": 300,
      "portMappings": [
        {
          "hostPort": 8080,
          "containerPort": 80,
          "protocol": "tcp"
        }
      ],
      "essential": true,
      "entryPoint": "nginx -g 'daemon off',
      "mountPoints": [],
      "name": "todo-demo",
      "environment": [],
      "links": [],
      "image": "$AWS_REGISTRY_URL/workflows-demo:$WERCKER_GIT_BRANCH",
      "command": [],
      "cpu": 10
    }
]
EOF
