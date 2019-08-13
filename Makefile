all : index.html

index.html : index.Rmd QAanalysis.knit.md DEanalysis.knit.md FEanalysis.knit.md
	Rscript -e "rmarkdown::render('$<')"

QAanalysis.knit.md : QAanalysis.Rmd
	Rscript -e "rmarkdown::render('$<', run_pandoc=FALSE, clean=FALSE)"

DEanalysis.knit.md : DEanalysis.Rmd
	Rscript -e "rmarkdown::render('$<', run_pandoc=FALSE, clean=FALSE)"

FEanalysis.knit.md : FEanalysis.Rmd
	Rscript -e "rmarkdown::render('$<', run_pandoc=FALSE, clean=FALSE)"
