---


---

<h2 id="execution-command">Execution command</h2>
<p>In order to classify the data, type <strong>main.m data.xlsx</strong> following the name of the classifier you wish to evaluate. For example:<br>
<code>main.m data.xlsx svm</code> ,to evaluate SVM</p>
<h2 id="goal-of-the-project">Goal of the project</h2>
<p>The goal of this particular project is to evaluate a set of classifiers( KNN, SVM, Decision Trees) based on their:</p>
<ol>
<li>Sensitivity</li>
<li>Specificity</li>
<li>Accuracy</li>
</ol>
<h2 id="dataset">Dataset</h2>
<p>The dataset that was used in this project was imported from Donald Bren School of Information &amp; Computer Sciences and includes characteristics for breast-cancer diagnosis.<br>
((<a href="https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Diagnostic%29">https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)</a>)</p>
<p>The dataset consists of 699 instances, each of those has one of 2 possible classes, either benign (denoted with the value of 2) or malignant (denoted with the value of 4).<br>
Each instance has also 9 attributes, scaled in [1,10] plus one more attribute which is the class’s label (benign, malignant). Missing attributes, which at the initialization step were denoted with the value “?” and were 16 in total, were replaced with the most frequent value.</p>
<p>Also, the distribution of these classes is:<br>
Benign: 458 (65.5%)<br>
Malignant: 241 (34.5%)</p>
<p>The results that were collected after using a variety of parameters for each classifier are the following:</p>

<table>
<thead>
<tr>
<th>#</th>
<th>Attributes</th>
<th>Domain</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>Sample code number</td>
<td>Id number</td>
</tr>
<tr>
<td>2</td>
<td>Clump Thickness</td>
<td>1 - 10</td>
</tr>
<tr>
<td>3</td>
<td>Uniformity of Cell Size</td>
<td>1 - 10</td>
</tr>
<tr>
<td>4</td>
<td>Uniformity of Cell Shape</td>
<td>1 - 10</td>
</tr>
<tr>
<td>5</td>
<td>Marginal Adhesion</td>
<td>1 - 10</td>
</tr>
<tr>
<td>6</td>
<td>Single Epithelial Cell Size</td>
<td>1 - 10</td>
</tr>
<tr>
<td>7</td>
<td>Bare Nuclei</td>
<td>1 - 10</td>
</tr>
<tr>
<td>8</td>
<td>Bland Chromatin</td>
<td>1 - 10</td>
</tr>
<tr>
<td>9</td>
<td>Normal Nucleoli</td>
<td>1 - 10</td>
</tr>
<tr>
<td>10</td>
<td>Mitoses</td>
<td>1 - 10</td>
</tr>
<tr>
<td>11</td>
<td>Class:</td>
<td>1 - 10</td>
</tr>
</tbody>
</table><h2 id="classifiers">Classifiers</h2>
<p>Classifiers that were implemented successfully are the following:</p>
<ul>
<li>K-Nearest Neighbors</li>
<li>Support Vector Machines</li>
<li>Decision Tree</li>
</ul>
<h2 id="results">Results</h2>

<table>
<thead>
<tr>
<th>Classifier</th>
<th>Accuracy</th>
<th>Sensitivity</th>
<th>Specificity</th>
</tr>
</thead>
<tbody>
<tr>
<td>SVM</td>
<td>0.97%</td>
<td>0.99%</td>
<td>0.96%</td>
</tr>
<tr>
<td>KNN</td>
<td>0.97%</td>
<td>0.97%</td>
<td>0.97%</td>
</tr>
<tr>
<td>Decision Tree</td>
<td>0.95%</td>
<td>0.97%</td>
<td>0.94%</td>
</tr>
</tbody>
</table><p>According to the results above, the best overall classifier seems to be <strong>SVM</strong>. This conclusion arises by comparing the classifiers’ <em><strong>Sensitivity</strong></em>, since it’s important to maximize the True Positive percentage, which is the model’s capability of correctly predicting the tumor’s state.</p>

