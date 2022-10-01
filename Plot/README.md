# Create *.csv and *.gnuplot files

Prepare files to create figures.


## Dependency

Install Python packages:

* [*hamming-digital-filters*](https://pypi.org/project/hamming-digital-filters/)
* [*mos-math*](https://pypi.org/project/mos-math/)

```bash
shell>pip3 install hamming-digital-filters
shell>pip3 install mos-math
```

* Clone data

```
shell> git clone https://github.com/vbotka/thesis-data.git /scratch/vbotka-thesis-data
```


## Quick start guide

```
shell> ansible-playbook pb_read_raw_data.yml -t read_raw,write_data
shell> ansible-playbook pb_write_all.yml
```


## Configure playbooks


* Configure the directories in the playbooks pb_*.yml. The raw data
  files will be searched in *data_dir*. The dictionary with parsed
  data will be stored in *data_dict*.

```yaml
data_dir: /scratch/vbotka-thesis-data
data_dict: /tmp/data.yml
```

* Read raw data and write the file

```yaml
shell> ansible-playbook pb_read_raw_data.yml -t read_raw,write_data
```

* Take a look at the created data. Read the dictionary *data* and list
  all types of data stored in the dictionary

```yaml
shell> ansible-playbook pb_read_raw_data.yml -t read_data,list_types
...
data.keys()|list:
  - dcvfile
  - gausnw
  - h1
  - hcvfile
  - hf
  - hfn
  - l1
  - l2
  - lcvfile
  - lf
  - nfile
  - nnfile
  - nwqc
  - nwqcn
  - nxfile
  - pf
  - profilnn
  - profilnw
  - qc
  - qcn
  - qf
  - qh
  - ql
  - t2vfile
```


## Parse the data

The file *vars/files-dat.txt* keeps the list of files that will be
processed. The structure of the files is stored in the
*vars/structure-dat.yml*. When you update these files rerun the
previous playbook to store the parsed data in *data_dict*.


## Create *.csv and *.gnuplot files

The playbook *pb_write_figure.yml* creates the *.csv and *gnuplot
files in the directory *Figures*. See the *tasks*.

* Configure the directories in the playbook *pb_write_figure.yml*

```yaml
data_dict: /tmp/data.yml
figure_dir: "{{ playbook_dir }}/../Figures"
```

* Create *.csv and *.gnuplot files for single figure

```yaml
shell> ansible-playbook pb_write_figure.yml -e figure=fig-7-3
  ...
TASK [Create gnuplot files] *********************************
ok: [localhost] => (item=en)
ok: [localhost] => (item=sk)
```

* Create all files in loop

```
shell> ansible-playbook pb_write_all.yml
```

* Create files in *tasks*

<TBD>

* Test the files

In the main directory run

```bash
shell> make all-en-eps
shell> make all-sk-eps
```

# EOF
