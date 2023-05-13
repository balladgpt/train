# train

We are no longer using a custom trainer. We are now using [@fakerybakery's `gpt2-finetune-gpu-cpu-mps-cuda`](https://github.com/balladgpt/gpt2-finetune-gpu-cpu-mps-cuda) library.

To use this, please run the following in Terminal (Unix only):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/balladgpt/train/main/train.sh)"
```
