# Explicit-Discourse-Parsing-Using-LLMS
## Overview
This repository contains the code and data preprocessing scripts for our Master’s thesis project, which focuses on explicit discourse parsing using fine-tuned LLaMA models. The primary goal is to detect discourse connectives and classify their relations using two different annotation approaches: **Numbered Tagging** and **Bracket Annotation**.

Our methodology involves transforming the **Penn Discourse TreeBank (PDTB) dataset** into structured formats suitable for model training, followed by fine-tuning LLaMA models on these transformed datasets and evaluating their performance.

## Repository Structure
- `Preprocessing_PDTB_into_Numbered_Tagging-Bracket_Annotation.ipynb`  
  - This notebook processes raw PDTB text files into **Numbered Tagging** and **Bracket Annotation** formats, making them suitable for fine-tuning the LLaMA models.
  - Contains exploration of the PCC German discourse corpus and FTDB French discourse corpus. 
- `LLamafactory_evaluating_model_prediction.ipynb`  
  - This notebook evaluates the performance of the fine-tuned LlaMA model using the bracketing approach.
- `Unllama_Model_Evaluation.ipynb`  
  - This notebook evaluates the **LS-unLLaMA** fine-tuned model using the numbered tagging approach.
- `data/`  
  - Directory containing the preprocessed datasets used for training and evaluation.
- `best_model_checkpoint/`  
  - Best checkpoint of the finetuned unLLaMA model.

## Fine-Tuning Methodologies
This work leverages two repositories for fine-tuning LLaMA models:
- **LS-LLaMA**: We fine-tuned the **LS-unLLaMA model**, designed for label supervision, allowing better performance in token classification tasks. Implementation details are based on the [LS-LLaMA repository](https://github.com/4AI/LS-LLaMA/tree/main).
- **LLaMA Factory**: Another fine-tuning approach was carried out using the [LLaMA-Factory repository](https://github.com/hiyouga/LLaMA-Factory/tree/04c10d2e80b7f7e516eba67fea420498a1238bb5), which provides flexible instruction tuning for LLaMA models.

## Annotation Approaches
### 1. Numbered Tagging
- Each token in a sentence is mapped to **0**, except for explicit discourse connectives, which receive an identifier corresponding to their discourse relation.
- Example:
  ```
  Sentence: "I was feeling tired; however, I decided to finish my work."
  Annotated: 0 0 0 0 3 0 0 0 0
  ```
- Here, the connective **"however"** is tagged with **3**, representing a contrast relation.

### 2. Bracket Annotation
- Explicit discourse connectives are enclosed in square brackets `[]` and labeled with their discourse relation.
- Example:
  ```
  Sentence: "I was feeling tired; however, I decided to finish my work."
  Annotated: "I was feeling tired; [however] (contrast), I decided to finish my work."
  ```

## Evaluation
We compare both annotation approaches by fine-tuning **LLaMA models** on these datasets and evaluating their performance on **discourse connective identification** and **relation classification**. The evaluation notebooks analyze:
- Precision, Recall, and F1-score for both approaches.
- Error analysis of misclassified connectives.
- Statistical significance tests comparing models.

## Citation
If you use this code in your research, please consider citing:
- [LS-LLaMA: Label-Supervised Fine-Tuning for LLaMA](https://github.com/4AI/LS-LLaMA/tree/main)
- [LLaMA-Factory: Fine-Tuning for Large Language Models](https://github.com/hiyouga/LLaMA-Factory/tree/04c10d2e80b7f7e516eba67fea420498a1238bb5)

## Contact
For any questions regarding this repository, please feel free to reach out or open an issue.

