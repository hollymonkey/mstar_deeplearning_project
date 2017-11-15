function mAP = do_fast_rcnn_test(conf, model_stage, imdb, roidb, ignore_cache)
    if ~exist('ignore_cache', 'var')
        ignore_cache            = false;
    end

    mAP                         = fast_rcnn_test(conf, imdb, roidb, ...
                                    'net_def_file',     model_stage.test_net_def_file, ...
                                    'net_file',         model_stage.output_model_file, ...
                                    'cache_name',       model_stage.cache_name, ...
                                    'ignore_cache',     ignore_cache);
end