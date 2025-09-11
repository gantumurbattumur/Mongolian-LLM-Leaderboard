#!/bin/bash
# Evaluate BTLM-3B-8K on Mongolian benchmarks

lm_eval \
  --model hf \
  --model_args pretrained=cerebras/btlm-3b-8k-base \
  --tasks monmlu,xcopa,mgsm \
  --output_path ../results/btlm_3b.json \
  --batch_size auto
