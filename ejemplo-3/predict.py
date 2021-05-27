from sklearn.ensemble import RandomForestClassifier
from sklearn.datasets import load_iris
import argparse
import joblib
import os

__species = {
    0: 'setosa',
    1: 'versicolor',
    2: 'virginica'
}

if __name__ == '__main__':
    # Reading of input arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', nargs='+', type=float, action='append')
    args = parser.parse_args()

    # Train the model if it does not exist previously
    if not os.path.exists('model/iris_clf_rf.pkl'):
        print('Training model...')
        X, y = load_iris(return_X_y=True)

        clf_rf = RandomForestClassifier(n_estimators=10, random_state=0)
        clf_rf.fit(X, y)

        if not os.path.isdir('./model'):
            os.mkdir("./model")

        joblib.dump(clf_rf, 'model/iris_clf_rf.pkl')

    # Load the trained model
    else:
        print('Reading model...')
        clf_rf = joblib.load('model/iris_clf_rf.pkl')

    # Predict
    y_pred = clf_rf.predict(args.input)
    for el_x, el_y in zip(args.input, y_pred):
        print(f'Prediction for {el_x}: {__species[el_y]}')
