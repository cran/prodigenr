## ----echo = FALSE-------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = TRUE
)

## ----manuscript-proj----------------------------------------------------------
library(prodigenr)
# Create a temporary folder using the fs package
new_project_path <- fs::path_temp("HeartDiseaseExercise")
setup_project(new_project_path)

## ----folder-tree, echo=FALSE, comment="", results="markup"--------------------
prodigenr:::viz_project_tree(new_project_path)

## ----example-create-function, eval=FALSE--------------------------------------
# # you need to run these in the project's console
# create_slides()

## ----example-create-functions-hide, echo=FALSE--------------------------------
# you need to run these in the project's console
withr::with_dir(
  new = new_project_path,
  code = {
    create_slides()
  }
)

## ----file-structure-with-doc, echo=FALSE, results="markup", comment=""--------
withr::with_dir(fs::path_temp(), {
  fs::dir_tree(basename(new_project_path))
})

## ----templates----------------------------------------------------------------
template_list

## ----remove-created-project, include=FALSE------------------------------------
fs::dir_delete(new_project_path)

