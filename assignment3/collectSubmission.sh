files="GANs-PyTorch.ipynb
GANs-TensorFlow.ipynb
LSTM_Captioning.ipynb
NetworkVisualization-PyTorch.ipynb
NetworkVisualization-TensorFlow.ipynb
RNN_Captioning.ipynb
StyleTransfer-PyTorch.ipynb
StyleTransfer-TensorFlow.ipynb"

for file in $files
do
    if [ ! -f $file ]; then
        echo "Required notebook $file not found."
        exit 0
    fi
done


rm -f assignment3.zip
zip -r assignment3.zip . -x "*.git/*" "*cs231n/datasets/coco_captioning*" "*cs231n/datasets/imagenet*" "*cs231n/datasets/squeezenet*" "*cs231n/datasets/MNIST_data*" "*.ipynb_checkpoints*" ".env/*" "*__pycache__*" "*cs231n/build/*"
