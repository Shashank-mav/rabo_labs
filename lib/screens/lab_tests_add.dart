import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class LabTestAdd extends StatelessWidget {
  const LabTestAdd({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Add Test'),
      //   backgroundColor: Colors.black,
      
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            SizedBox(
              height: 100,
              child: Card(
                margin: EdgeInsets.zero,
                color: Color.fromARGB(255, 72, 236, 146),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () async {
                        ImagePicker _Picker = ImagePicker();
                        final XFile? _image = await _Picker.pickImage(
                          source: ImageSource.gallery
                        );
                        if ( _image == null) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('No image selected'),
                          )
                          );

                        }

                        if (_image != null) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Image selected'),
                          )
                          );
                        }
                      },
                    ),
                    const Text(
                      "Add An Image",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                    
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Test Information",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            _buildTextFormField('Test Name', ),
            _buildTextFormField('Test Description', ),
            _buildTextFormField('Test Category', ),
            _buildTextFormField('Test Price', ),
              const SizedBox(height: 10),
              _buildSlider('Price'),
               _buildSlider('Quantity'),
               const SizedBox(height: 10),
               _buildCheckbox('Recommended'),
                _buildCheckbox('Popular'),


                Center(
                  child: ElevatedButton(onPressed: () {
                    print('Save');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 60, 220, 129),
                  ),
                   child: const Text('Save',
                   style: const TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.bold,
                   ),
                   ),
                   ),
                ),
          ],
                 ),
                 ),
                 
          
    );
        
  }

  Row _buildCheckbox(String title) {
    return Row(
               children: [
                 SizedBox(
                   width: 125,
                   
                   child: Text(
                     title,
                     style: const TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                     ),
                   )),
                 Checkbox(
                   value: true,
                    checkColor: Colors.black,
                    activeColor: Colors.black12,
                     onChanged: (value) {},
                     ),
               ],
             );
  }

  Row _buildSlider(String title,) {
    return Row(
              children: [
                SizedBox(
                  width: 75,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                Expanded(
                  child: Slider(
                    value: 0,
                    min: 0,
                    max: 25,
                    divisions: 10,
                    activeColor: Color.fromARGB(255, 55, 184, 132),
                    inactiveColor: Color.fromARGB(31, 50, 241, 149),
                    onChanged: (value) {},
                    ),
                ),
                  
              ],
            );
  }

  TextFormField _buildTextFormField(
    String hintText
  ) {
    return TextFormField(
            decoration: InputDecoration(hintText: hintText),
            
          );
  }
}