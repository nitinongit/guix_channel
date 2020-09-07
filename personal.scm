(define-public r-intergraph
  (package
    (name "r-intergraph")
    (version "2.0-2")
    (source
      (origin
        (method url-fetch)
        (uri (cran-uri "intergraph" version))
        (sha256
          (base32
            "18a7xgb2rp0w9jl2rkh8nzyjprrs5w7h2iidvc8c38bzx3qpggkc"))))
    (properties `((upstream-name . "intergraph")))
    (build-system r-build-system)
    (propagated-inputs
      `(("r-igraph" ,r-igraph) ("r-network" ,r-network)))
    (native-inputs `(("r-knitr" ,r-knitr)))
    (home-page "http://mbojan.github.io/intergraph")
    (synopsis
      "Coercion Routines for Network Data Objects")
    (description
      "This package provides functions implemented in this package allow to coerce (i.e.  convert) network data between classes provided by other R packages.  Currently supported classes are those defined in packages: network and igraph.")
    (license gpl3)))

(define-public r-cemitool
  (package
    (name "r-cemitool")
    (version "1.12.2")
    (source
      (origin
        (method url-fetch)
        (uri (bioconductor-uri "CEMiTool" version))
        (sha256
          (base32
            "1wm69dyfkhr1rapvc73lfj4si8ff3snz8hgay6c7y8nwgkykk0pn"))))
    (properties `((upstream-name . "CEMiTool")))
    (build-system r-build-system)
    (propagated-inputs
      `(("r-clusterprofiler" ,r-clusterprofiler)
        ("r-data-table" ,r-data-table)
        ("r-dplyr" ,r-dplyr)
        ("r-dt" ,r-dt)
        ("r-fastcluster" ,r-fastcluster)
        ("r-fgsea" ,r-fgsea)
        ("r-ggdendro" ,r-ggdendro)
        ("r-ggplot2" ,r-ggplot2)
        ("r-ggpmisc" ,r-ggpmisc)
        ("r-ggrepel" ,r-ggrepel)
        ("r-ggthemes" ,r-ggthemes)
        ("r-gridextra" ,r-gridextra)
        ("r-gtable" ,r-gtable)
        ("r-htmltools" ,r-htmltools)
        ("r-igraph" ,r-igraph)
        ("r-intergraph" ,r-intergraph)
        ("r-knitr" ,r-knitr)
        ("r-matrixstats" ,r-matrixstats)
        ("r-network" ,r-network)
        ("r-pracma" ,r-pracma)
        ("r-rmarkdown" ,r-rmarkdown)
        ("r-scales" ,r-scales)
        ("r-sna" ,r-sna)
        ("r-stringr" ,r-stringr)
        ("r-wgcna" ,r-wgcna)))
    (native-inputs `(("r-knitr" ,r-knitr)))
    (home-page
      "https://bioconductor.org/packages/CEMiTool")
    (synopsis
      "Co-expression Modules identification Tool")
    (description
      "The CEMiTool package unifies the discovery and the analysis of coexpression gene modules in a fully automatic manner, while providing a user-friendly html report with high quality graphs.  Our tool evaluates if modules contain genes that are over-represented by specific pathways or that are altered in a specific sample group.  Additionally, CEMiTool is able to integrate transcriptomic data with interactome information, identifying the potential hubs on each network.")
    (license gpl3)))
