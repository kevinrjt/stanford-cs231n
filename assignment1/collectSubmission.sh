rm -f assignment1.zip 
zip -r assignment1.zip . -x "*.git/*" "*cs231n/datasets/cifar-10-batches-py*" "*.ipynb_checkpoints*" ".env/*" "*__pycache__*"
