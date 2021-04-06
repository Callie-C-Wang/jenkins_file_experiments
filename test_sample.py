def func(x):
    return x + 1


def test_answer_sample_of_failure_1():
    assert func(4) == 5


def test_answer_sample_of_failure_2():
    assert func(4) == 5


def test_answer_sample_of_failure_3():
    assert func(4) == 5


def test_answer_sample_of_success_1():
    assert func(4) == 5


def test_answer_sample_of_success_2():
    assert func(5) == 6


def test_answer_sample_of_success_3():
    assert func(6) == 7


def test_answer_sample_of_success_4():
    assert func(7) == 8


def test_answer_sample_of_success_5():
    assert func(8) == 9


def test_answer_sample_of_success_3():
    assert func(9) == 10
