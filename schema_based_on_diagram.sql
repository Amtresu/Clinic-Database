CREATE TABLE patients(
    id serial PRIMARY KEY,
    name text,
    date_of_birth date
);

CREATE TABLE medical_histories(
    id serial PRIMARY KEY,
    admitted_at timestamp,
    patient_id int REFERENCES patients(id),
    status text
);

CREATE TABLE treatments(
    id serial PRIMARY KEY,
    type text,
    name text
);

CREATE TABLE treatment_medical_histories(
    med_history_id int CONSTRAINT med_history_FK REFERENCES medical_histories(id),
    treatments_id int CONSTRAINT treatments_FK REFERENCES treatments(id),
    PRIMARY KEY (med_history_id, treatments_id) 
);