# Create *.csv and *.gnuplot files

Prepare files to create figures.


## Read data

* Clone data

```
shell> https://github.com/vbotka/thesis-data.git
```

* Configure the directories in the playbook
  *pb_read_raw_data.yml*. The raw data files will be searched in
  *data_dir*. The dictionary with parsed data will be stored in
  *data_tmp*.

```yaml
data_dir: /scratch/vbotka-thesis-data
data_tmp: /tmp/data.yml
```

* Read raw data and write the file

```yaml
shell> ansible-playbook pb_read_raw_data.yml -t read_raw,write_data
```

* Read the dictionary *data* and list all types of data stored in the dictionary

```yaml
shell>ansible-playbook pb_read_raw_data.yml -t read_data,list_types
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
previous playbook to store the parsed data in *data_tmp*.


## Create *.csv and *.gnuplot files

The playbook *pb_write_figure.yml* creates the *.csv and *gnuplot
files in the directory *Figures*. See the *tasks*.

* Configure the directories in the playbook *pb_write_figure.yml*

```yaml
data_tmp: /tmp/data.yml
figure_dir: "{{ playbook_dir }}/../Figures"
```

* Create *.csv and *.gnuplot files

```yaml
shell> ansible-playbook pb_write_figure.yml -e figure=fig-7-3
  ...
TASK [Create csv files from profilnw] ***********************
changed: [localhost] => (item=10)
changed: [localhost] => (item=08)
changed: [localhost] => (item=03)
changed: [localhost] => (item=04)
changed: [localhost] => (item=05)
changed: [localhost] => (item=11)
changed: [localhost] => (item=09)

TASK [Create gnuplot files] *********************************
changed: [localhost] => (item=en)
changed: [localhost] => (item=sk)
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
