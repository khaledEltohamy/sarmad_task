
//Main 
export 'package:sarmad_task/main_common.dart';

// FLutter package
export 'package:flutter/material.dart';
export 'package:flutter/foundation.dart';
export 'dart:convert';

// Config
export '../config/app_config.dart';
export 'package:sarmad_task/src/config/theme/color_app.dart';
// Utils
export '../utils/constants.dart';
export 'package:sarmad_task/src/utils/extensions.dart';
export 'package:sarmad_task/src/utils/string_helper.dart';


//Core 
export 'package:sarmad_task/src/core/errors/exception.dart';
export 'package:sarmad_task/src/core/network/network_checker.dart';
export 'package:sarmad_task/src/core/errors/faliure.dart';
export 'package:sarmad_task/src/core/errors/error_model.dart';
export 'package:sarmad_task/src/core/validation/text_fields_widgets.dart';
export 'package:sarmad_task/src/core/validation/validations.dart';



// Bloc
export 'package:bloc/bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:sarmad_task/src/features/search_criterial/presentation/cubit/gridview_listview_cubit.dart';
export 'package:sarmad_task/src/features/search_criterial/presentation/bloc/search_criteria_bloc.dart';

// Models
export 'package:sarmad_task/src/features/search_criterial/data/model/response_preson.dart';
export 'package:sarmad_task/src/features/search_criterial/data/model/preson.dart';
export 'package:sarmad_task/src/features/search_criterial/data/model/request_preson.dart';
export 'package:sarmad_task/src/features/search_criterial/domain/entity/preson_entity.dart';



//DataSource
export 'package:sarmad_task/src/features/search_criterial/data/datasource/base_datasource.dart';
export 'package:sarmad_task/src/features/search_criterial/data/datasource/remote_datasource.dart';

// Repostories
export 'package:sarmad_task/src/features/search_criterial/data/repository/base_repository.dart';
export 'package:sarmad_task/src/features/search_criterial/domain/repository/search_criteria_repository.dart';

//Network
export 'package:internet_connection_checker/internet_connection_checker.dart';
export 'package:dio/dio.dart';
export 'package:sarmad_task/src/core/network/api_helper.dart';

//UseCase
export 'package:sarmad_task/src/features/search_criterial/domain/usecase/search_criteria_usecase.dart';

//Package
export 'package:equatable/equatable.dart';


// injection
export 'package:get_it/get_it.dart';


//screens

export 'package:sarmad_task/src/features/search_criterial/presentation/view/screen/search_criteria_screen.dart';
//widgets
export 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/list_search_criteria_widget.dart';
export 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/form_request_widget.dart';
export 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/item_search_criteria_widget.dart';
export 'package:sarmad_task/src/features/search_criterial/presentation/view/widgets/gridview_search_criteria_widget.dart';


