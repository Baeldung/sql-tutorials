# Correct syntax
ALTER TABLE Specification
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY (program_id)
REFERENCES Program (id);

# Incorrect syntax; jumbled syntax
ALTER TABLE Specification
ADD FOREIGN KEY specification_program_id_fkey 
CONSTRAINT (program_id)
REFERENCES Program (id);

# Incorrect syntax; wrong punctuation
ALTER TABLE Specification (
ADD CONSTRAINT
  specification_program_id_fkey 
  FOREIGN KEY (program_id)
  REFERENCES Program (id)
);

# Incorrect syntax; a reserved word
ALTER TABLE Specification
ADD CONSTRAINT foreign 
FOREIGN KEY (program_id)
REFERENCES Program (id);

# Incorrect syntax, misspelled keyword REFERENCES
ALTER TABLE Specification
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY (program_id)
REFERENCE Program (id);

# Incorrect syntax, missing closing parenthesis
ALTER TABLE Specification
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY (program_id
REFERENCES Program (id);

# Incorrect syntax; quotes
ALTER TABLE "Specification"
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY ("program_id")
REFERENCES Program ("id");

# Correct syntax; backticks
ALTER TABLE `Specification`
ADD CONSTRAINT specification_program_id_fkey 
FOREIGN KEY (`program_id`)
REFERENCES Program (`id`);

# Incorrect syntax, missing required elements
ALTER TABLE Specification
ADD CONSTRAINT specification_program_id_fkey
FOREIGN KEY (program_id);
