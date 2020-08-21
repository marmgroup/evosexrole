#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=23:30:00
#SBATCH --partition=gelifes
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1000
#SBATCH --cpus-per-task=16

module load GCC --latest

datadir="/data/$(whoami)"
./bin/evorole --force param=param.json rep=5 outdir=$datadir/evorole