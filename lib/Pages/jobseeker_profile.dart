import 'package:flutter/material.dart';

class JobSeekerProfile extends StatefulWidget {
  const JobSeekerProfile({super.key});

  @override
  State<JobSeekerProfile> createState() => _JobSeekerProfileState();
}

class _JobSeekerProfileState extends State<JobSeekerProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String companyName = '';
  String email = '';
  String country = '';
  String state = '';
  String city = '';
  String webLink = '';
  String description = '';
  String gstnNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employer Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Company Name *'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Company name is required';
                  }
                  return null;
                },
                onSaved: (value) {
                  companyName == value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email *'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Valid email is required';
                  }
                  return null;
                },
                onSaved: (value) {
                  email == value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Country *'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Country is required';
                  }
                  return null;
                },
                onSaved: (value) {
                  country == value;
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'State *'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'State is required';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        state == value;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'City *'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'City is required';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        city == value;
                      },
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Web Link'),
                onSaved: (value) {
                  webLink == value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) {
                  description == value;
                },
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'GSTN Number (Optional)'),
                onSaved: (value) {
                  gstnNumber == value;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    // Process and save the form data
                    // You can add your logic here
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
