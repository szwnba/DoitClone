.class public abstract Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;
.super Ljava/lang/Object;
.source "ListViewSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallback:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mListView:Landroid/widget/AbsListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "callback"    # Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    .line 67
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 68
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mSlop:I

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mMinFlingVelocity:I

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mMaxFlingVelocity:I

    .line 71
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mAnimationTime:J

    .line 72
    iput-object p1, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    .line 73
    iput-object p2, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mCallback:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mPaused:Z

    return v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mCallback:Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$Callback;

    return-object v0
.end method


# virtual methods
.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;

    invoke-direct {v0, p0}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$1;-><init>(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    .line 102
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 204
    :cond_1
    :goto_0
    const/16 v17, 0x0

    :goto_1
    return v17

    .line 104
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 105
    const/16 v17, 0x0

    goto :goto_1

    .line 109
    :cond_2
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v12, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 111
    .local v4, "childCount":I
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [I

    .line 112
    .local v11, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v11, v18

    sub-int v15, v17, v18

    .line 114
    .local v15, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    aget v18, v11, v18

    sub-int v16, v17, v18

    .line 116
    .local v16, "y":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-lt v10, v4, :cond_4

    .line 125
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownX:F

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownPosition:I

    .line 129
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 132
    :cond_3
    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 117
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 118
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 119
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 120
    move-object/from16 v0, p0

    iput-object v3, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    goto :goto_3

    .line 116
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 137
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v10    # "i":I
    .end local v11    # "listViewCoords":[I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownX:F

    move/from16 v18, v0

    sub-float v5, v17, v18

    .line 142
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 145
    .local v13, "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 146
    .local v14, "velocityY":F
    const/4 v6, 0x0

    .line 147
    .local v6, "dismiss":Z
    const/4 v7, 0x0

    .line 148
    .local v7, "dismissRight":Z
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_8

    .line 149
    const/4 v6, 0x1

    .line 150
    const/16 v17, 0x0

    cmpl-float v17, v5, v17

    if-lez v17, :cond_7

    const/4 v7, 0x1

    .line 155
    :cond_6
    :goto_4
    if-eqz v6, :cond_b

    .line 157
    move-object/from16 v0, p0

    iget-object v9, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    .line 159
    .local v9, "downView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v8, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownPosition:I

    .line 160
    .local v8, "downPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v18

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    move/from16 v17, v0

    :goto_5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mAnimationTime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    .line 161
    new-instance v18, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v8}, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener$2;-><init>(Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;Landroid/view/View;I)V

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 171
    .end local v8    # "downPosition":I
    .end local v9    # "downView":Landroid/view/View;
    :goto_6
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownX:F

    .line 173
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    .line 174
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownPosition:I

    .line 175
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 150
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 151
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mMinFlingVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v17, v13

    if-gtz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mMaxFlingVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v13, v17

    if-gtz v17, :cond_6

    cmpg-float v17, v14, v13

    if-gez v17, :cond_6

    .line 152
    const/4 v6, 0x1

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_9

    const/4 v7, 0x1

    :goto_7
    goto/16 :goto_4

    :cond_9
    const/4 v7, 0x0

    goto :goto_7

    .line 160
    .restart local v8    # "downPosition":I
    .restart local v9    # "downView":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_5

    .line 169
    .end local v8    # "downPosition":I
    .end local v9    # "downView":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mAnimationTime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 180
    .end local v5    # "deltaX":F
    .end local v6    # "dismiss":Z
    .end local v7    # "dismissRight":Z
    .end local v13    # "velocityX":F
    .end local v14    # "velocityY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownX:F

    move/from16 v18, v0

    sub-float v5, v17, v18

    .line 186
    .restart local v5    # "deltaX":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_c

    .line 187
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mSwiping:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 191
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 192
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    shl-int/lit8 v17, v17, 0x8

    or-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 196
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mSwiping:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mViewWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 199
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lim/doit/pro/activity/listener/ListViewSwipeTouchListener;->mPaused:Z

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
