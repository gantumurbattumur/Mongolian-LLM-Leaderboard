#!/bin/bash
# Evaluate StabilityAI StableCode-3B-Instruct on coding tasks

lm_eval \
  --model hf \
  --model_args pretrained=stabilityai/stablecode-instruct-3b \
  --tasks humaneval,mbpp \
  --output_path ../results/stablecode_3b.json \
  --batch_size auto
