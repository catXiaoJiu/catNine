#!/bin/bash

#python3 -m venv ~/python/env/jupyter
source ~/python/env/jupyter/bin/activate

python3 -m pip install jupyter
pip3 install OpenAI

jupyter notebook


curl https://api.deepseek.com/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-846f8705982f4a3b9dded306c125a9bf" \
  -d '{
        "model": "deepseek-chat",
        "messages": [
          {"role": "system", "content": "You are a helpful assistant."},
          {"role": "user", "content": "Hello!"}
        ],
        "stream": false
      }'