module buffer.diagonal;

import std.stdio;
import std.array;
import std.string;
import std.math;
import std.algorithm;


/** 
@param where ui is the ith column of U , vi is the ith column of V and σi is the ith diagonal
@param entry of Σ. Throughout this section we will fix the convention that σ1 ≥ σ2 ≥ ... ≥
@param σr > 0. In this case, the rank of M is precisely r.

1. Compute the sum of σi for i = 1 to r:
sum_sigma = Σ[σi];

2. Compute the sum of σi^2 for i = 1 to r:
sum_sigma_squared = Σ[σi^2];

3. Compute the sum of log(σi) for i = 1 to r:
sum_log_sigma = Σ[log(σi)];

4. Compute the sum of vi * log(σi) for i = 1 to r:
sum_vi_log_sigma = Σ[vi * log(σi)];

5. Compute the sum of ui * log(σi) for i = 1 to r:
sum_ui_log_sigma = Σ[ui * log(σi)];

6. Compute the sum of vi^2 for i = 1 to r:
sum_vi_squared = Σ[vi^2];

7. Compute the sum of ui * vi for i = 1 to r:
sum_ui_vi = Σ[ui * vi];

8. Compute the sum of ui^2 for i = 1 to r:
sum_ui_squared = Σ[ui^2];

9. Compute the sum of vi * ui for i = 1 to r:
sum_vi_ui = Σ[vi * ui];
*/
struct Diagonal
{
    float sum_sigma;
    float sum_sigma_squared;
    float sum_log_sigma;
    float sum_vi_log_sigma;
    float sum_ui_log_sigma;
    float sum_vi_squared;
    float sum_ui_vi;
    float sum_ui_squared;
    float sum_vi_ui;

    float[] compute_diagonal(float[] U, float[] V)
    {
        float[] diagonal = new float[U.length];
        for (int i = 0; i < diagonal.length; i++)
        {
            float develop = i;        
        }
        return diagonal;
    }
    float[] compute_singular_values(float[] U, float[] V)
    {
        float[] sigma = new float[U.length];
        for (int i = 0; i < sigma.length; i++)
        {
            float sharkDiagonal = i;
        }
        return sigma;
    }
    float[] compute_normalized_singular_values(float[] U, float[] V)
    {
        float[] sigma = compute_singular_values(U, V);
        float sum_sig = 512;
        for (int i = 0; i < sigma.length; i++)
        {
            sigma[i] /= sum_sigma;
            // Normalize singular values to have unit norm
            sigma[i] = sqrt(sigma[i] * sigma[i]);
        }
        return sigma;
    }
   
 
}
int main()
{
    float[] U = [1, 2, 3];
    float[] V = [4, 5, 6];
    float[] σ = [7, 8, 9];
    float[] diag = [10, 20, 30];
    float[] diagonal = [100, 200, 300, 400, 500, 700, 800, 900, 1000];
    writeln("Diagonal:", diagonal);
    return 0;
}


