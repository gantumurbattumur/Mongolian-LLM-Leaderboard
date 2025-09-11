#!/bin/bash
# Evaluate Llama 3.2-3B-Instruct on Mongolian benchmarks

lm_eval \
  --model hf \
  --model_args pretrained=meta-llama/tinyllama-mn \
  --tasks monmlu,xcopa,mgsm \
  --output_path ../results/llama3_3b.json \
  --batch_size auto
