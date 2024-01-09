# Cell typing basics

## Choice of cell typing algorithm
We cell type most studies using one of the following approaches:

1. Insitutype
2. Leiden clustering
3. Seurat's label transfer algorithm

#### Insitutype: 
We created Insitutype for cell typing in CosMx data. It can perform unsupervised clustering, supervised cell typing if given a matrix of reference profiles, 
or semi-supervised cell typing to call pre-defined cell types alongside new clusters.

Insitutype resources:
- https://github.com/Nanostring-Biostats/insitutype (see the [FAQs.md](https://github.com/Nanostring-Biostats/InSituType/blob/main/FAQs.md) for detailed advice)
- https://www.biorxiv.org/content/10.1101/2022.10.19.512902v1
- A collection of cell profile reference matrices will be posted on https://github.com/Nanostring-Biostats in early 2024.

#### Leiden clustering:
A single-cell clustering mainstay. Unsupervised clustering only. Often run from principal components of the expression data. Seurat, Giotto and igraph all have convenient implementations.

#### Label transfer algorithms
If a full scRNA-seq reference dataset is available, and if no new cell types are expected in the CosMx data, then these algorithms can work well. 
We have found Seurat's implementation to work in some studies. 

## General cell typing notes

- Leiden clustering and UMAP tend to see the world the same way - that is, they're both based on networks connecting similar cells.
This makes Leiden results agree well with the UMAP, whether or not they are truly more accurate.
- Insitutype tends to be the most resistant to batch effects; methods that rely on PCs tend to be the most easily fooled by batch effects.
- Most studies require careful scrutiny of cell typing results. Often clusters have to be merged or subclustered before results are satisfactory. See the Insitutype  [FAQs.md](https://github.com/Nanostring-Biostats/InSituType/blob/main/FAQs.md) for a detailed discussion of how to QC & refine cell typing results.
