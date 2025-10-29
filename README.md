This demonstrates Lean's poor performance in the presence of shared let-bindings.

The files named `*Defs.lean` show the expectable performance with proper sharing, and behave roughly
linearly in the number of definitions.

On my machine:
- 20 definitions take ~1.4s,
- 200 definitions take about ~6s,
- 2000 definitions take about ~53s.

The files named `*Lets.lean` show the performance of let-bindings, and behave exponentially in the
number of definitions.

On my machine:
- 20 definitions take ~1.5s,
- 200 definitions take ~30s,
- 2000 definitions... will take a while (I had extrapolated it might take > 1 year).

Timings were obtained by doing:
```
rm -rf ./.lake/build/lib/lean/MWE && time lake build ./MWE/<File>.lean
```
