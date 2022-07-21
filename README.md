# Diffusion Limited Aggregation (DLA) Project

## DLA algorithm with drift probability (main_DLA)

This MATLAB algorithm generates a diffusion-limited aggregation cluster in a 2-dimensional lattice, where particles are individually aggregated to a single cluster. Each particle is occupied at a radius slightly larger than the cluster radius and has a random initial direction. It then performs a random walk until it comes into proximity with the cluster and aggregates to it, initializing the next particle's trajectory. The algorithm outputs the final cluster's fractal dimension (Df), which is calculated with 2 different methods: (1) Df = log(N_final)/log(R_final) and (2) Df = slope of log(R) vs log(N), where N = # of particles and R = radius of the cluster.

<img src="/images/DLA_cluster.jpg" width="100"> ![GitHub Logo](/images/DLA_cluster.jpg) ![GitHub Logo](/images/DLA_Pdrift2.png)

Variable parameters: Total # of particles, maximum lattice radius, drift probability

To use: Run main_DLA/maincode.m

## Inwards fractal growth and sticking probability (P_stick)

This was the more creative part of the project, where I drew clusters inwards from a circle with a set radius by occupying each new particle at the center. A sticking probability is added which determines the probability of a particle sticking to a cluster when it is adjacent to it. In the main code algorithm, this probability is assumed to be 1.

Variable parameters: Total # of particles, sticking probability

To use: Run P_stick/stickingcode.m

 ![GitHub Logo](/images/DLA_Pstick.jpg)

