
========================================
Prague Discourse Treebank 3.0 (PDiT 3.0)
========================================


Authors
=======
Pavlína Synková (Charles University, Faculty of Mathematics and Physics),
Magdaléna Rysová (Charles University, Faculty of Mathematics and Physics),
Jiří Mírovský (Charles University, Faculty of Mathematics and Physics),
Lucie Poláková (Charles University, Faculty of Mathematics and Physics),

and from previous versions:
Veronika Scheller, Jana Zdeňková, Šárka Zikánová, Eva Hajičová


Introduction
============

The Prague Discourse Treebank 3.0 (PDiT 3.0, Synková et al. 2022) is
a new version of annotation of discourse relations marked by primary
and secondary discourse connectives in the data of the Prague
Dependency Treebank. With respect to the previous versions
(mostly PDiT 2.0 and PDiT 1.0), PDiT 3.0 brings a largely revised
annotation of discourse relations and offers the data also in
the Penn Discourse Treebank 3.0 (PDTB 3.0, Prasad et al. 2019)
format and sense taxonomy.

Please visit https://ufal.mff.cuni.cz/pdit3.0 for detailed and
updated information about the corpus.


Data Format
===========

The data can be found in directory data, where they are available in
two subdirectories offering two data formats:

pml - the data in the original PML format (i.e., the traditional
      Prague discourse annotation on top of tectogrammatical
      (deep-syntax) dependency trees, known from the previous
      PDiT releases).
      Please note that for licensing reasons, the underlying PDT data
      cannot be part of this distribution - please follow the
      instructions below to get the data in the PML format first.
      The data here are further divided into ten subdirectories
      (train-1 ... train-8, dtest, etest). Annotation of each document
      is captured in four interlinked files, in accordance with the
      layer of annotation: word layer (files *.w.gz), morphological
      layer (*.m.gz), analytical layer (*.a.gz), and tectogrammatical
      layer(*.t.gz).
      
column - the data transformed to the Penn Discourse Treebank column
      format, along with the plain texts.
      The data here are placed in two subdirectories, gold and raw,
      carrying the annotations and the original plain texts, respectively.
      In both these directories, the data are further divided into ten
      subdirectories (01 ... 10), corresponding to the original division
      to train-1 ... train-8, dtest, etest.

      
How to get and browse the data
==============================

Data in the PML format
======================

Please note that for licensing reasons, the underlying PDT data
cannot be a direct part of the PDiT 3.0 distribution. Instead,
you need to get the underlying PDT data separately (the PDT part
of the PDT-C 1.0, http://hdl.handle.net/11234/1-3185) and
the PDiT 3.0 distribution provides a script that enriches the data
with the PDiT 3.0 discourse annotation.

These are the steps to follow:

1) Get the PDT part of the PDT-C 1.0 (copy the contents of directory
   data/PDT/pml/tamw from the PDT-C 1.0 distribution to directory
   data/pml in the PDiT 3.0 distribution.
2) Install tree editor TrEd along with the necessary extension (see
   instructions below).
3) Run the script load_discourse.sh (Linux) or load_discourse.bat (MS Windows)
   in the data/pml directory (make sure that the path to btred has
   been set properly in the script). The data will be enriched with
   the PDiT 3.0 discourse annotation.

Tree editor TrEd
================

Tree editor TrEd (Pajas and Štěpánek, 2008) can be used to open and
browse the data in the PML format. The editor can be downloaded for
various platforms from its home page (http://ufal.mff.cuni.cz/tred/).
Please follow installation instructions specified at the page for
your operating system.

After the installation, an extension needs to be installed:

- Start TrEd.
- In the top menu, select Setup -> Manage Extensions...; a dialog
  window with a list of installed extensions appears.
- Click on the button "Get New Extensions"; a dialog window with
  a list of available (not yet installed) extensions appears.
- Make sure that at least the extension "Prague Discourse Treebank 3.0
  (pdit30)" is checked to install (if it is not in the list, it may
  have already been installed).
- Click on the button "Install Selected"; the selected extensions
  (along with their dependencies) get installed.
- Close all TrEd windows including the main application window and
  start TrEd again.

Now, TrEd is able to open the PML data of PDiT 3.0. To see the discourse
annotation of a document on the tectogrammatical layer, open the
respective file with extension .t.gz.

In case of troubles with the installation of TrEd or with browsing
the data, please contact the authors at (tred at ufal.mff.cuni.cz).

Data in the column format
=========================

Data in the Penn column format are directly a part of the PDiT 3.0
distribution. The raw texts can be found in directory data/column/raw,
while the stand-off annotations of discourse relations are placed
in directory data/column/gold.

In the annotation files, each discourse relation is represented
by a single line consisting of a list of fields separated by |.
Please find a description of the fields below in Appendix.

The data are compatible with the Penn Discourse Treebank annotation
tool Annotator (Lee et al., 2016). 


Citation
========

Please cite PDiT 3.0 when using the corpus for your research:

Pavlína Synková, Magdaléna Rysová, Jiří Mírovský, Lucie Poláková,
Veronika Scheller, Jana Zdeňková, Šárka Zikánová and Eva Hajičová:
Prague Discourse Treebank 3.0. Data/software, ÚFAL MFF UK, Prague,
Czech Republic, LINDAT/CLARIAH-CZ: http://hdl.handle.net/11234/1-4875,
Dec 2022.


Licence
=======

PDiT 3.0 is distributed under the Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 (CC BY-NC-SA 4.0) licence.

For more information and updates, see
https://ufal.mff.cuni.cz/pdit3.0


Acknowledgement
===============

The work on version 3.0 of the corpus was financed by GAČR project
22-03269S "Methods for rapid discourse annotation in selected corpora". 


Appendix - Description of the column format
===========================================

The column format used in PDiT 3.0 consists of 44 fields.
Fields 0-33 correspond to fields defined in the PDTB 3.0 and
their description is taken from the PDTB 3.0 annotation manual
(and slightly adopted for PDiT 3.0),
fields 34-43 carry additional information added only in PDiT 3.0.
Some of the fields are not used in PDiT 3.0 but they are kept
for compatibility with the PDTB 3.0 format (they are marked
as 'not used'):

0 - Relation Type - Explicit, AltLex, AltLexC
1 - Conn SpanList - SpanList of the Explicit Connective or
    the AltLex/AltLexC selection
2 - Conn Src - Connective’s Source (not used)
3 - Conn Type - Connective’s Type (not used)
4 - Conn Pol - Connective’s Polarity (not used)
5 - Conn Det - Connective’s Determinacy (not used)
6 - Conn Feat SpanList - Connective’s Feature SpanList (not used)
7 - Conn1 - Explicit Connective Head
8 - SClass1A - Semantic Class of the Connective
9 - SClass1B - Second Semantic Class of the First Connective (not used)
10 - Conn2 - Second Implicit Connective (not used)
11 - SClass2A - First Semantic Class of the Second Connective (not used)
12 - SClass2B - Second Semantic Class of the Second Connective (not used)
13 - Sup1 - SpanList SpanList of the First Argument’s Supplement
14 - Arg1 - SpanList SpanList of the First Argument
15 - Arg1 Src - First Argument’s Source (not used)
16 - Arg1 Type - First Argument’s Type (not used)
17 - Arg1 Pol - First Argument’s Polarity (not used)
18 - Arg1 Det - First Argument’s Determinacy (not used)
19 - Arg1 Feat SpanList - SpanList of the First Argument’s Feature (not used)
20 - Arg2 SpanList - SpanList of the Second Argument
21 - Arg2 Src - Second Argument’s Source (not used)
22 - Arg2 Type - Second Argument’s Type (not used)
23 - Arg2 Pol - Second Argument’s Polarity (not used)
24 - Arg2 Det - Second Argument’s Determinacy (not used)
25 - Arg2 Feat SpanList - SpanList of the Second Argument’s Feature (not used)
26 - Sup2 SpanList - SpanList of the Second Argument’s Supplement
27 - Adju Reason - The Adjudication Reason (not used)
28 - Adju Disagr - The type of the Adjudication disagreement (not used)
29 - PB Role - The PropBank role of the PropBank verb (not used)
30 - PB Verb - The PropBank verb of the main clause of this relation (not used)
31 - Offset - The Conn SpanList of Explicit/AltLex/AltLexC tokens
32 - Provenance - Indicates whether the token is a new PDTB3 token
     or has a corresponding PDTB2 token (not used)
33 - Link - The link id of the token
34 - Discourse Type - The original discourse type in the Prague taxonomy
35 - Conn Text - Text representation of field 31 (Offset)
36 - Conn Feat Text - Text representation of field 6 (Conn Feat SpanList) (not used)
37 - Sup1 Text - Text representation of field 13 (Sup1 SpanList)
38 - Arg1 Text - Text representation of field 14 (Arg1 SpanList)
39 - Arg1 Feat Text - Text representation of field 19 (Arg1 Feat SpanList) (not used)
40 - Arg2 Text - Text representation of field 20 (Arg2 SpanList)
41 - Arg2 Feat Text - Text representation of field 25 (Arg2 Feat SpanList) (not used)
42 - Sup2 Text - Text representation of field 26 (Sup2 SpanList
43 - Genre - The genre of the document


References
==========

Alan Lee, Rashmi Prasad, Bonnie Webber and Aravind Joshi: Annotating
discourse relations with the PDTB Annotator. In Proceedings of
COLING 2016, the 26th International Conference on Computational
Linguistics: System Demonstrations, pp. 121-125, 2016.

Petr Pajas and Jan Štěpánek: Recent Advances in a Feature-Rich Framework
for Treebank Annotation. In: The 22nd International Conference on
Computational Linguistics - Proceedings of the Conference, The Coling
2008 Organizing Committee, Manchester, UK, ISBN 978-1-905593-45-3,
pp. 673-680, 2008.

Rashmi Prasad, Bonnie Webber, Alan Lee and Aravind Joshi: 
Penn Discourse Treebank Version 3.0. Data/Software, Linguistic Data
Consortium, University of Pennsylvania, Philadelphia, LDC2019T05, 2019.

Pavlína Synková, Magdaléna Rysová, Jiří Mírovský, Lucie Poláková,
Veronika Scheller, Jana Zdeňková, Šárka Zikánová and Eva Hajičová:
Prague Discourse Treebank 3.0. Data/software, ÚFAL MFF UK, Prague,
Czech Republic, LINDAT/CLARIAH-CZ: http://hdl.handle.net/11234/1-4875,
Dec 2022.
