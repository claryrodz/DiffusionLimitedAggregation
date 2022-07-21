# Diffusion Limited Aggregation Project

This MATLAB algorithm generates a diffusion-limited aggregation (DLA) cluster in a 2-dimensional lattice, where particles are individually aggregated to a single cluster. Each particle is occupied at a radius slightly larger than the cluster radius and has a random initial direction. It then performs a random walk until it comes into proximity with the cluster and aggregates to it, initializing the next particle's trajectory. The algorithm outputs the final cluster's fractal dimension (Df), which is calculated with 2 different methods: (1) Df = log(N_final)/log(R_final) and (2) Df = slope of log(R) vs log(N), where N = # of particles and R = radius of the cluster. See FinalReport for more details.

