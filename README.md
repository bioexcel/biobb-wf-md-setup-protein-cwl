# BioExcel CWL example simulation system

### Introduction
Common Workflow Language example that illustrates the process of setting up a
simulation system containing a protein, step by step, using the BioExcel
Building Blocks library (biobb). The particular example used is the Lysozyme
protein (PDB code 1AKI).


### Requirements

* [CWLtool](https://github.com/common-workflow-language/cwltool) 
* [Docker](https://www.docker.com/)
* [Git](https://git-scm.com/)
* [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

Instructions for installing both of these are available on the linked websites.

### Getting started

#### Setup

Make sure you have `git`, `Docker` and `cwltool` installed. If you are not familiar with CWL you can see the user guide [here](https://www.commonwl.org/user_guide/)

#### Obtaining the files

This example requires the BioBB libraries. To make it easier to find and access these
they are included in the directory `biobb @ xxxxxxx` through use of `git submodules`.
This means that **you cannot download a zip** and must **clone the repository instead**.

To clone the repository and setup the submodules, you need to do the following three setps:

1. Clone the repository to the machine you want to use it on.
2. Change into that directory
2. Initialise the submodules, which downloads the required submodules to the machine.

These steps can be done with the following commands:

```
git clone git@github.com:bioexcel/biobb-wf-md-setup-protein-cwl.git
cd biobb-wf-md-setup-protein-cwl
git submodule update --init
```

You can also clone the repository and initialise the submodules in one command:

```
git clone --recurse-submodules git@github.com:bioexcel/biobb-wf-md-setup-protein-cwl.git
cd biobb-wf-md-setup-protein-cwl
```

### Usage

Before running the simulation, make sure that docker is [running and installed](https://docs.docker.com/engine/install/). 

There are two parts to this example (or any CWL example): The workflow file, which describes the workflow, and the input file which specifies the inputs,outputs and other configurable options.

* `protein_md.cwl` is the workflow file.
* `protein_md_input_description.yml` is the input or configuration file.


To run the simulation use the command:

```
cwltool protein_md.cwl protein_md_input_descriptions.yml
```

All inputs will be downloaded as the simulation is carried out.

This workflow takes around 30 minutes to 1 hour to run on a quad-core Intel i5 processor.

### Outputs

Whilst this is running a lot of output will be printed to the screen.  The final part will list all of the output files created and it should then say:

```
Final process status is success
```


### Copyright & Licensing

This software has been developed in the [MMB group](http://mmb.irbbarcelona.org/www/) at the [BSC](https://www.bsc.es/) & [IRB](https://www.irbbarcelona.org/en); and in the [eScience Lab](https://esciencelab.org.uk/) and [Research IT](https://esciencelab.org.uk/) groups at the [University of Manchester](https://www.manchester.ac.uk/) for the European BioExcel, funded by the European Commission (EU H2020 823830, EU H2020 675728).

(c) 2015-2020 Barcelona Supercomputing Center
(c) 2015-2020 Institute for Research in Biomedicine
(c) 2019-2020 University of Manchester
Licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0), see the file LICENSE for details.
