<?php

/** Set the namespace **/

namespace thecodeisbae\ExcelToCsv;


/*
** Simple xlsx to csv file made by thecodeisbae using PhpSpreadSheet
*/

/** Call for required class using the namespace PhpOffice\PhpSpreadsheet **/

// require_once(_EXT_LIB_PATH . 'PhpSpreadsheet/Spreadsheet.php');
// require_once(_EXT_LIB_PATH . 'PhpSpreadsheet/IOFactory.php');

require_once(_EXT_LIB_PATH . 'PhpOffice/vendor/autoload.php');

use PhpOffice\PhpSpreadsheet\Spreadsheet;

use PhpOffice\PhpSpreadsheet\IOFactory as io_factory;

class ExcelToCsv
{
	private $file;
	private $filePath;
	private $delimiter = ";";
	private $savePath = '';

	public function __construct(String $file, String $filePath, String $delimiter = ';', String $savePath = '')
	{
		$this->file = $file;
		$this->filePath = $filePath;
		$this->savePath = $savePath;
		$this->delimiter = $delimiter;
	}

	public function setFile($file)
	{
		$this->file = $file;
	}

	public function getFile()
	{
		return $this->file;
	}

	public function setFilePath($filepath)
	{
		$this->filePath = $filepath;
	}

	public function getFilePath()
	{
		return $this->filePath;
	}

	public function setSaveFilePath($savefilepath)
	{
		$this->savePath = $savefilepath;
	}

	public function getSaveFilePath()
	{
		return $this->savePath;
	}

	/* Write the main function */
	public function convertExcelToCsv()
	{
		/** Check if the params file is an xlsx **/
		if (strtolower(explode('.', $this->file)[sizeof(explode('.', $this->file)) - 1]) != 'xlsx') {
			echo 'Only xlsx files are allowed :(';
			return false;
		}
		$filename = explode('.', $this->file)[0];
		$reader = io_factory::createReader("Xlsx");
		$spreadsheet = $reader->load($this->filePath);
		$numberOfSheets = $spreadsheet->getSheetCount();

		for ($index = 0; $index < $numberOfSheets; $index++) {
			$writer = io_factory::createWriter($spreadsheet, "Csv");
			$writer->setSheetIndex($index);   // Select which sheet to export.
			$writer->setDelimiter($this->delimiter);  // Set delimiter.
			/** Check savepath **/
			$csvfile = $this->savePath . "/" . $filename . ".csv";
			$writer->save($csvfile);
		}
		return $csvfile;
	}
}
