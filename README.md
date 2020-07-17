# BioExcel CWL example simulation system

### Introduction
Common Workflow Language example that illustrate the process of setting up a
simulation system containing a protein, step by step, using the BioExcel
Building Blocks library (biobb). The particular example used is the Lysozyme
protein (PDB code 1AKI).


### Requirements

** [CWLtool](https://github.com/common-workflow-language/cwltool) 
** [Docker](https://www.docker.com/)

Instructions for installing both of these are available on the linked websites.

### Installation

The repository uses git submodules to link to the BioBB libraries, so downloading as
a zip file will not work. Instead you should checkout the repository using:
`git clone --recurse-submodules [repository url]`.
If you use the standard clone command, then you'll need to activate the submodules 
afterwards:
`git submodule update --init`.


### Usage

Before running the simulation, make sure that docker is running.

The workflow is defined in the file `protein_md.cwl`. 
The simulation configuration is set in the file `protein_md_input_description.yml`.

To run the simulation use the command:
`cwltool protein_md.cwl protein_md_input_descriptions.yml`

All inputs will be downloaded as the simulation is carried out.

This workflow takes around 30 minutes to 1 hour to run on a quad-core Intel i5 processor.

### Outputs






### Copyright & Licensing
This software has been developed in the _group_ at _UoM_ (_include links and funding_).

Licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0), see the file LICENSE for details.
