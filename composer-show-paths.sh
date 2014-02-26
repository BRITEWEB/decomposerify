#!/usr/bin/env php
<?php

$output = shell_exec( 'composer show -i' );

if ( strpos( $output, 'Composer could not find' ) !== false )
	return;

$packages = array();
$packagesStrings = explode( "\n", $output );
if ( !empty( $packagesStrings ) )
{
	foreach ($packagesStrings as $packageStr)
	{
		$packageStr = trim( $packageStr );

		if ( empty( $packageStr ) )
			continue;

		$indexOfSpace = strpos( $packageStr, ' ' );

		if ( $indexOfSpace !== false)
		{
			$packageName = substr( $packageStr, 0, $indexOfSpace );
		}
		else
		{
			$packageName = $packageStr;
		}

		$packages[] = $packageName;

		echo "$packageName\n";
	}
}