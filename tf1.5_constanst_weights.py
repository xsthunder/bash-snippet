# https://keras.io/api/layers/base_layer/#layer-class

class SimpleDense(Layer):

  def __init__(self):
      super(SimpleDense, self).__init__()

  def build(self, input_shape):  # Create the state of the layer (weights)
    # Create a non-trainable weight.
    self.q = tf.Variable(
        initial_value= tf.convert_to_tensor(init_v),
        trainable=True)
    self.m_atten =  MultiHeadAttention(heads=heads,head_size=head_size)

  def call(self, inputs):  # Defines the computation from inputs to outputs
      (v, ) = inputs # b, l, h
      k  = v # b, l, h
      q = self.q[None, :] # 1, op_len, h
      print("q", q)
      ret = self.m_atten([q, k, v])
      return ret # # 1, op_len, h

k = encoder([token_inputs_1,segment_inputs_1])
print(k)
m_atten = SimpleDense()([k])
print("m_atten", m_atten)# (b, 9999, 768)
model = Model([token_inputs_1, segment_inputs_1], m_atten)
