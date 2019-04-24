# naive_CPU_for_COA

This is a Naive CPU ...
For Computer Architecture and Organization (COA) project.\\

Board: Artix-7 XC7A00T\\
Vivado Version: 2018.2\\
Python 3.7\\

Need numpy\\

python task_generator.py\\
(Generate the .coe file to initialize the RAM.)

python mem_generator.py\\
(Generate the .coe file to initialize the control unit in CPU.)

Each time after generating the .coe file, the corresponding IP core should be upgraded via "Reset Output Product -> Generate Output Product" by right click on the IP core.

Then re-run the "Generate Bitstream".

Reference: \\
<Computer Organization and Architecture -- Designing for Performance> (8th edition)  [chapter 15-16]
By William Stallings
 
Produced By:\\
Xiaofeng Zhou 61516125 SEU, CN.
