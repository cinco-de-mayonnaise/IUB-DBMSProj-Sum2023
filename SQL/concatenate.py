"""
File concatenator: Written by AbdullahTrees.

Opens all files in all folders inside 'sources' recursively and concatenates their contents to produce a larger file.
Modified from HOSTS_concatenator to produce an .SQL file from many text files

"""

import os, glob
import sys
import datetime  

# An array of strings corresponding to the contents of every file and its name
# file contents list = array of [filecontents: str, filename: str]
fc_list = []

def main():
    # Open all files in '\sources'
    print(
"""File concatenator: This script will concatenate together several SQL scripts into a giant SQL script for easier table manipulation.
Please ensure all your SQL code exist in text files and are inside the 'sources' folder. Press Enter to continue.
"""
          )
    input()

    outputfilename = input("Please enter a file name: ")
    if (outputfilename.isspace() or outputfilename == ""):
        print("File name not provided, setting it to \"LankaBangla.sql\"")
        outputfilename = "LankaBangla.sql"
    elif ('.' in outputfilename):
        if not ('sql' in outputfilename.lower()):
            print("--Warning: Output file name specified is not an SQL file!")
    else:
        outputfilename = outputfilename + '.sql'

    cwd = os.getcwd()  # lets say its `.\`
    sd =  os.path.join(cwd, 'sources')   # then this is `.\sources`

    print('Importing all files from \'sources\' directory')
    try:
        RecursivelyOpenEverything(sd)
    except:
        print('\'sources\' folder does not exist. Please create a \'sources\' folder and place text files containing SQL code to be concatenated.')
        sys.exit(1)
    
    if os.path.isfile(os.path.join(cwd, outputfilename)):
        ConfirmReplace()
    else:
        print('--Output file does not exist.')
    
    print('--Creating output file...')
    try:
        output_file = open(os.path.join(cwd, outputfilename), 'w')
    except: 
        print('--Failed to create output file at %s! Do you have permissions or does the file already exist?' % (os.path.join(cwd, outputfilename)))
        sys.exit(1)

    print('Generating new output file...')
    WriteFirstBanner(output_file)

    for s in fc_list:
        WriteBorderBanner(s[1], output_file, 'begin')
        output_file.write(s[0])
        WriteBorderBanner(s[1], output_file, 'end')
    
    output_file.flush()
    print("Done! Press Enter to exit.")
    input()
    return

def RecursivelyOpenEverything(inside):
    if (os.path.isdir(inside) == False):
        raise ValueError("Not a valid directory to traverse!")
    
    for root, subdirs, files in os.walk(inside):
        for filename in files:
            fname = os.path.join(root, filename)
            if (os.path.splitext(fname)[1] == '.txt' or os.path.splitext(fname)[1] == '.sql'):
                try:
                    with open(fname, 'r') as f:
                        print('--Reading in %s...' % filename)
                        fc_list.append([f.read().strip(), filename])
                except:
                    print('----Failed to open file %s!' % filename)

    return

def WriteFirstBanner(hosts_file):
    first_banner = """-- ----------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------
-- -
-- - This SQL script was generated automatically using HOSTS_concatenator made by AbdullahTrees!
-- - 
-- - File created at %s
-- - 
-- - Built using the following source files:
""" % (datetime.datetime.now())

    hosts_file.write(first_banner)
    for v in fc_list:
        hosts_file.write("-- - \t=> %s\n" % (v[1]))
    
    hosts_file.write("""-- - 
-- ----------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------


""")
    return


def WriteBorderBanner(filename, hosts_file, type):
    begin_banner = """
-- ----------------------------------
-- -- Begin %s!
-- -----------------------------
""" % (filename)

    end_banner = """
-- -----------------------------
-- -- %s ended here!
-- ----------------------------------

""" % (filename)

    if type == 'begin':
        hosts_file.write(begin_banner)
    elif type == 'end':
        hosts_file.write(end_banner)
    return

def ConfirmReplace():
    from msvcrt import getch
    while True:
        print('The output file already exists. Replace it? [Y/N]')
        i = getch()

        if i == b'Y' or i == b'y':
            return
        if i == b'N' or i == b'n':
            sys.exit(0)

if __name__ == '__main__':
    main()    