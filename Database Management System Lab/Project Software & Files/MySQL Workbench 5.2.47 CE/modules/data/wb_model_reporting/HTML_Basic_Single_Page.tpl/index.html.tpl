<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <title>{{TITLE:h}}</title>
  <link rel="stylesheet" type="text/css" media="screen" href="{{STYLE_NAME}}.css">
</head>
  
<body class="tbl_detail_page">
{{#SCHEMATA}}

  <a name="Schema_Nr_{{SCHEMA_ID}}"> <!-- Schema {{SCHEMA_NR_FMT}} -->
  <div class="schema_header">Schema {{SCHEMA_NAME:h}} <div class="small_text">({{SCHEMA_ID}}/{{SCHEMA_COUNT}})</div></div>
  </a>

{{#TABLES}}
  <a name="Table_Nr_{{TABLE_ID}}"> <!-- Table {{TABLE_NR_FMT}} -->
  <div class="table_header">Table {{TABLE_NAME:h}} <div class="small_text">({{TABLE_ID}}/{{TABLE_COUNT}})</div></div>
  </a>
  <div class="table_body">
{{#COLUMNS_LISTING}}
  <div class="subitem_header">Columns</div>
  
  <table class="subitems_table" border="0" cellpadding="2" cellspacing="0" width="100%">
    <tr>
      <td class="subitem_table_head">Key</td>
      <td class="subitem_table_head">Column Name</td>
      <td class="subitem_table_head">Datatype</td>
      <td class="subitem_table_head">Not Null</td>
      <td class="subitem_table_head">Default</td>
      <td class="subitem_table_head">Comment</td>
    </tr>
{{#COLUMNS}}
    <tr>
      <td class="subitem_table_field">{{COLUMN_KEY:h}}</td>
      <td class="subitem_table_field">{{COLUMN_NAME:h}}</td>
      <td class="subitem_table_field">{{COLUMN_DATATYPE:h}}</td>
      <td class="subitem_table_field">{{COLUMN_NOTNULL:h}}</td>
      <td class="subitem_table_field">{{COLUMN_DEFAULTVALUE:h}}</td>
      <td class="subitem_table_field">{{COLUMN_COMMENT:h}}</td>
    </tr>
{{/COLUMNS}}
  </table>
{{/COLUMNS_LISTING}}
{{#INDICES_LISTING}}
  <div class="subitem_header">Indices</div>
  
  <table class="subitems_table" border="0" cellpadding="2" cellspacing="0" width="100%">
    <tr>
      <td class="subitem_table_head">Index Name</td>
      <td class="subitem_table_head">Columns</td>
      <td class="subitem_table_head">Primary</td>
      <td class="subitem_table_head">Unique</td>
      <td class="subitem_table_head">Type</td>
      <td class="subitem_table_head">Kind</td>
      <td class="subitem_table_head">Comment</td>
    </tr>
{{#INDICES}}
    <tr>
      <td class="subitem_table_field">{{INDEX_NAME:h}}</td>
      <td class="subitem_table_field"><table border="0" cellpadding="2" cellspacing="0" width="100%">
{{#INDICES_COLUMNS}}
          <tr>
            <td class="subitem_table_field">{{INDEX_COLUMN_NAME:h}}</td>
            <td class="subitem_table_field">{{INDEX_COLUMN_ORDER:h}}</td>
            <td class="subitem_table_field">{{INDEX_COLUMN_COMMENT:h}}</td>
          </tr>
{{/INDICES_COLUMNS}}
        </table></td>
      <td class="subitem_table_field">{{INDEX_PRIMARY:h}}</td>
      <td class="subitem_table_field">{{INDEX_UNIQUE:h}}</td>
      <td class="subitem_table_field">{{INDEX_TYPE:h}}</td>
      <td class="subitem_table_field">{{INDEX_KIND:h}}</td>
      <td class="subitem_table_field">{{INDEX_COMMENT:h}}</td>
    </tr>
{{/INDICES}}
  </table>
{{/INDICES_LISTING}}
{{#REL_LISTING}}
  <div class="subitem_header">Relationships</div>
  
  <table class="subitems_table" border="0" cellpadding="2" cellspacing="" width="100%">
    <tr>
      <td class="subitem_table_head">Relationship Name</td>
      <td class="subitem_table_head">Relationship Type</td>
      <td class="subitem_table_head">Parent Table</td>
      <td class="subitem_table_head">Child Table</td>
      <td class="subitem_table_head">Card.</td>
    </tr>
{{#REL}}
    <tr>
      <td class="subitem_table_field">{{REL_NAME:h}}</td>
      <td class="subitem_table_field">{{REL_TYPE:h}}</td>
      <td class="subitem_table_field">{{REL_PARENTTABLE:h}}</td>
      <td class="subitem_table_field">{{REL_CHILDTABLE:h}}</td>
      <td class="subitem_table_field">{{REL_CARD:h}}</td>
    </tr>
{{/REL}}
  </table>
{{/REL_LISTING}}
  </div><!-- table_body -->
  <br>
{{/TABLES}}

{{/SCHEMATA}}
</body>
</html>
