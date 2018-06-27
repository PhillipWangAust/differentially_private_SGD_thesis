function g = grad(w, x, y)
    %g = ((-y.* x) * exp(-y.*(w*x')'))/(exp(-y.*(w*x')')+1);
    g = (-y.* x) * (1/(exp(y.*(w*x')')+1));
end
