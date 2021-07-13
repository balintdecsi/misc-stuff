classdef MyClass
    properties
        Value
        Class
    end
    methods
        function obj = MyClass(val)
            if nargin == 1 && isnumeric(val)
                val = round(val);
                obj.Value = val;
            else
                error('Valor must be numeric!');
            end
        end
        function p = isEven(obj)
            if rem([obj.Value], 2) == 0
                [p.Class] = 'Even';
            else
                [p.Class] = 'Odd';
            end
            disp(p.Class);
        end
    end
end
                
                
            