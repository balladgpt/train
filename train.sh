echo "Welcome to the BalladGPT Trainer!"
echo "The trainer uses @fakerybakery's gpt2-finetune-gpu-cpu-mps-cuda."
echo "Starting the trainer..."
echo "Checking requirements"

if test -f "traindata.txt"; then
    echo "[OK] training data exists"
else
    echo "[ERROR] training data does not exist. please curate training data in traindata.txt."
    exit
fi

if which wget >/dev/null; then
    echo "[OK] wget is installed."
else
    echo "[ERROR] wget is not installed."
    exit
fi

if which python3 >/dev/null; then
    echo "[OK] python is installed."
else
    echo "[ERROR] python is not installed. please install python."
    exit
fi

if pip3 show torch >/dev/null; then
    echo "[OK] pytorch is installed."
else
    echo "[ALERT] pytorch is not installed. attempting to install..."
    python3 -m pip install --quiet --progress-bar pytorch 2>&1
fi


echo "installing transformers..."
python3 -m pip install --quiet --progress-bar transformers 2>&1

echo "downloading script..."
wget -q -O train.py -P "https://raw.githubusercontent.com/fakerybakery/gpt2-finetune-gpu-cpu-mps-cuda/main/main.py"

echo "starting trainer..."
python3 train.py
mkdir finetuned_gpt2
echo "done! check the 'finetuned_gpt2' directory for your saved model."
echo "thank you for using balladgpt!"
echo "https://huggingface.co/balladgpt"
echo "https://github.com/fakerybakery"
