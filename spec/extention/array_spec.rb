require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))

describe Array do
  describe '#indexes' do
    context 'case1' do
      let(:ary) { [1, 2, 3, 1, 2] }
      subject { ary.indexes 1 }

      it { should eq [0, 3] }
    end

    context 'case2' do
      let(:ary) { [1, 2, 3, 1, 2, 1, 1, 3, 2, 1] }
      subject { ary.indexes 1 }

      it { should eq [0, 3, 5, 6, 9] }
    end

    context 'case3' do
      let(:ary) { ["foo", "bar", "baz", "foo", "baz", "foo"] }
      subject { ary.indexes "foo" }

      it { should eq [0, 3, 5] }
    end
  end

  describe '#slice_indexes' do
    context 'case1' do
      let(:ary) { [1, 2, 3, 1, 2] }
      subject { ary.slice_indexes 1 }

      it { should eq [[1, 2, 3], [1, 2]] }
    end

    context 'case2' do
      let(:ary) { [1, 2, 3, 1, 2, 1, 1, 3, 2, 1] }
      subject { ary.slice_indexes 1 }

      it { should eq [[1, 2, 3], [1, 2], [1], [1, 3, 2], [1]] }
    end

    context 'case3' do
      let(:ary) { ["foo", "bar", "baz", "foo", "baz", "foo"] }
      subject { ary.slice_indexes "foo" }

      it { should eq [["foo", "bar", "baz"], ["foo", "baz"], ["foo"]] }
    end
  end
end
