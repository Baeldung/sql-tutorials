//Correct syntax
ALTER TABLE specification
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY (program_id)
REFERENCES program (id);

//Incorrect syntax; jumbled syntax
ALTER TABLE specification
ADD FOREIGN KEY specification_program_id_fkey 
CONSTRAINT(program_id)
REFERENCES program(id);

//Incorrect syntax; wrong punctuation
ALTER TABLE specification (
ADD CONSTRAINT
  specification_program_id_fkey 
  FOREIGN KEY(program_id)
  REFERENCES program (id)
);

//Incorrect syntax; a reserved word
ALTER TABLE specification
ADD CONSTRAINT foreign 
FOREIGN KEY (program_id)
REFERENCES program (id);

//Incorrect syntax, misspelled keyword REFERENCES
ALTER TABLE specification
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY(program_id)
REFERENCE program (id);

//Incorrect syntax, missing closing parenthesis
ALTER TABLE specification
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY(program_id
REFERENCES program (id);

//Incorrect syntax; quotes
ALTER TABLE 'specification'
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY('program_id')
REFERENCES program ('id');

//Correct syntax; backticks
ALTER TABLE `specification`
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY(`program_id`)
REFERENCES program (`id`);

//Incorrect syntax, missing required elements
ALTER TABLE specification
ADD CONSTRAINT specification_program_id_fkey
FOREIGN KEY(program_id);
