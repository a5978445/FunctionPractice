//
@testable import FunctionPractice
import XCTest

class WordFrequencySortTests: XCTestCase {
    // 对句子中的所有单词出现频率进行排序
    // 不包含介词

    // 分析 input : String
    // output: [(String,Int)]

    let testString: String = """

    So try this first bit of poignancy on for size:
        One day I was walking down one of those busy roads covered with car dealerships (this was shortly after my wedding was called off) and I found an orphaned dog on the road. A woolly, black dog with greenish red eyes. I was kind of feeling like an orphan myself, so I took a couple balloons that were tied to a pole at the dealership and I relocated them to the dog’s collar. Then, I decided he would be my dog. I named him Bigelow.
    We set off to get some Milkbones for Bigelow and, afterwards, head over to my place, where we could sit in recliners and listen to Gorky’s Zygotic Mynci. Oh, and we’d also need to stop by a thrift store and get Bigelow his own recliner.
    But Bigelow hadn’t accepted me as his master. So five minutes later, the stupid dog took a different crosswalk than I did and I never caught up. So whereas he had previously only been lost once, he was now lost twice. I slowed my pace towards the life of Milkbones and an extra recliner. I had a dog for five minutes.
    Stupid Benedict Arnold of a dog. I sat on a city bench and threw pine cones at a statue of three sheep crossing a bridge. After that, I wept for hours. The tears just came. Now there’s a little something poignant to get you started.
    I wonder where he went with all those balloons. That crazy dog must have looked like a party with legs.
    It wasn’t much later that I pulled my own Bigelow. I printed out a bunch of pages on Ruby. Articles found around the Web. I scanned through them on a train ride home one day. I flipped through them for five minutes and then gave up. Not impressed.
    I sat, staring out the window at the world, a life-sized blender mixing graffiti and iron smelts before my eyes. This world’s too big for such a a little language, I thought. Poor little thing doesn’t stand a chance. Doesn’t have legs to stand on. Doesn’t have arms to swim.
    And yet, there I was. One little man on a flimsy little train (and I even still had a baby tooth to lose at the time) out of billions of people living on a floating blue rock. How can I knock Ruby? Who’s to say that I’m not going to happen to choke on my cell phone and die later that evening. Why’s dead, Ruby lives on.
    The gravestone:
    What’s in his trachea? Oh, look, a Nokia!
    Just my luck. Finally get to have a good, long sleep underground, only to be constantly disturbed by Pachelbel’s Canon going off in my stomach.
    
    """

    func testTraditionalStyleSortWordsByUseFrequency() {
        let result0 = try! WordFrequencySort.traditionalStyleSortWordsByUseFrequency(testString)
        let result1 = try! WordFrequencySort.functionStyleSortWordsByUseFrequency(testString)

        for i in 0 ..< result0.count {
            assert(result1[i].0 == result0[i].0)
            assert(result1[i].1 == result0[i].1)
        }

        //   assert(result0 == result1)

        print(try! WordFrequencySort.traditionalStyleSortWordsByUseFrequency(testString))
        //  print(result.first?.components)

        //  assert(<#T##condition: Bool##Bool#>)

        print("caca")
    }

    func testFunctionStyleSortWordsByUseFrequency() {
        print(try! WordFrequencySort.functionStyleSortWordsByUseFrequency(testString))

        print("caca")
    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
