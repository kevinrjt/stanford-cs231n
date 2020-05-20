files="BatchNormalization.ipynb
ConvolutionalNetworks.ipynb
Dropout.ipynb
FullyConnectedNets.ipynb
PyTorch.ipynb
TensorFlow.ipynb"

for file in $files
do
    if [ ! -f $file ]; then
        echo "Required notebook $file not found."
        exit 0
    fi
done

rm -f assignment2.zip
zip -r assignment2.zip . -x "*.git/*" "*cs231n/datasets/cifar-10-batches-py*" "*.ipynb_checkpoints*" ".env/*" "*__pycache__*" "*cs231n/build/*" "*.so" "*.c"
