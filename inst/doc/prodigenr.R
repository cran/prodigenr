## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = TRUE
)

## ----manuscriptProj------------------------------------------------------
library(prodigenr)
# Create a temporary folder using the fs package
new_project_path <- fs::path_temp("HeartDiseaseExercise")
setup_project(new_project_path)

## ----folder_tree, echo=FALSE, comment="", results="markup"---------------
fs::dir_tree(new_project_path)

## ----poster_abstract_show, eval=FALSE------------------------------------
#  # you need to run these in the project's console
#  create_abstract()
#  create_poster()

## ----poster_abstract_hide, echo=FALSE------------------------------------
# you need to run these in the project's console
withr::with_dir(
    new = new_project_path,
    code = {
        create_abstract()
        create_poster()
    }
)

## ----file_structure_with_doc, echo=FALSE, results="markup", comment=""----
fs::dir_tree(new_project_path)

## ----templates-----------------------------------------------------------
template_list

