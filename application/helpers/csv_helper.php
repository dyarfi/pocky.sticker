<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// ------------------------------------------------------------------------

/**
 * CSV Helpers
 * Inspiration from PHP Cookbook by David Sklar and Adam Trachtenberg
 * 
 * @author		Jérôme Jaglale
 * @link		http://maestric.com/en/doc/php/codeigniter_csv
 */

// ------------------------------------------------------------------------

/**
 * Array to CSV
 *
 * download == "" -> return CSV string
 * download == "toto.csv" -> download file toto.csv
 */
if ( ! function_exists('array_to_csv'))
{
	function array_to_csv($array, $download = "")
	{
		if ($download != "")
		{	
			header('Content-Type: application/csv');
			header('Content-Disposition: attachement; filename="' . $download . '"');
		}		

		ob_start();
		$f = fopen('php://output', 'w') or show_error("Can't open php://output");
		$n = 0;		
		foreach ($array as $line)
		{
			$n++;
			if ( ! fputcsv($f, $line))
			{
				show_error("Can't write line $n: $line");
			}
		}
		fclose($f) or show_error("Can't close php://output");
		$str = ob_get_contents();
		ob_end_clean();

		if ($download == "")
		{
			return $str;	
		}
		else
		{	
			echo $str;
		}		
	}
}

// ------------------------------------------------------------------------

/**
 * Query to CSV
 *
 * download == "" -> return CSV string
 * download == "toto.csv" -> download file toto.csv
 */
if ( ! function_exists('query_to_csv'))
{
	function query_to_csv($query, $headers = TRUE, $download = "")
	{
		if ( ! is_object($query) OR ! method_exists($query, 'list_fields'))
		{
			show_error('invalid query');
		}
		
		$array = array();
		
		if ($headers)
		{
			$line = array();
			foreach ($query->list_fields() as $name)
			{
				$line[] = $name;
			}
			$array[] = $line;
		}
		
		foreach ($query->result_array() as $row)
		{
			$line = array();
			foreach ($row as $item)
			{
				$line[] = $item;
			}
			$array[] = $line;
		}

		echo array_to_csv($array, $download);
	}
}
if ( ! function_exists('_export_to_excel'))
{
	function to_excel($array, $filename) {
        header('Content-type: application/vnd.ms-excel');
        header('Content-Disposition: attachment; filename='.$filename.'.xls');

		// Filter all keys, they'll be table headers
        $h = array();
        foreach($array as $row){
            foreach($row as $key=>$val){
				if(!in_array($key, $h)){
					$h[] = $key;   
				}
			}
		}
		//echo the entire table headers
		echo '<table><tr>';
		foreach($h as $key) {
			$key = ucwords($key);
			echo '<th>'.$key.'</th>';
		}
		echo '</tr>';

		foreach($array as $row){
			 echo '<tr>';
			foreach($row as $val)
				 writeRow($val);   
		}
		echo '</tr>';
		echo '</table>';

            
	}
    function writeRow($val) {
		echo '<td>'.utf8_decode(_trim_export_string($val)).'</td>';              
    }
	
	function _trim_export_string($value) {
        $value = str_replace(array("&nbsp;", "&amp;", "&gt;", "&lt;"), array(" ", "&", ">", "<"), $value);
        return strip_tags(str_replace(array("\t", "\n", "\r"), "", $value));
    }
}
	
/* End of file csv_helper.php */
/* Location: ./system/helpers/csv_helper.php */