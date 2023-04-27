def test_index(client):
    response = client.get("/")
    assert response.status_code == 200

    expected = "<p>Index page</p>"
    assert expected == response.get_data(as_text=True)
