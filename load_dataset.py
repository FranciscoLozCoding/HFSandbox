from datasets import load_dataset

class smokedatasetQA():
    """Load smokedataset_QA from huggingface"""

    def __init__(self):
        self.dataset = load_dataset("sagecontinuum/smokedataset_QA", split='test', trust_remote_code=True)
        self.label_names = self.dataset.features['label'].names
        self.description = self.dataset.description