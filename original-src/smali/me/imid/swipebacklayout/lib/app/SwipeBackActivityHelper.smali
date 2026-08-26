.class public Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;
.super Ljava/lang/Object;
.source "SwipeBackActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    .line 27
    return-void
.end method


# virtual methods
.method public convertActivityFromTranslucent()V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    const-class v2, Landroid/app/Activity;

    .line 87
    const-string v3, "convertFromTranslucent"

    const/4 v4, 0x0

    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 89
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public convertActivityToTranslucent()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 110
    :try_start_0
    const-class v7, Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v5, 0x0

    .line 112
    .local v5, "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, v0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 118
    const-class v6, Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 119
    .local v3, "methods":[Ljava/lang/reflect/Method;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_2

    .line 120
    const-class v6, Landroid/app/Activity;

    .line 121
    const-string v7, "convertToTranslucent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 122
    aput-object v5, v8, v9

    .line 120
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    iget-object v6, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    .end local v5    # "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 112
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v5    # "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    aget-object v1, v0, v6

    .line 113
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 114
    const-string v9, "TranslucentConversionListener"

    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 114
    if-eqz v8, :cond_1

    .line 115
    move-object v5, v1

    .line 112
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "clazz":Ljava/lang/Class;
    .restart local v3    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    const-class v6, Landroid/app/Activity;

    .line 127
    const-string v7, "convertToTranslucent"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    .line 128
    aput-object v5, v8, v9

    const/4 v9, 0x1

    .line 129
    const-class v10, Landroid/app/ActivityOptions;

    aput-object v10, v8, v9

    .line 126
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 130
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    iget-object v6, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    .end local v5    # "translucentConversionListenerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 134
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    const v1, 0x7f0300ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 34
    iput-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 36
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    new-instance v1, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper$1;

    invoke-direct {v1, p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper$1;-><init>(Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;)V

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setSwipeListener(Lme/imid/swipebacklayout/lib/SwipeBackLayout$SwipeListener;)V

    .line 54
    return-void
.end method

.method public onPostCreate()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mSwipeBackLayout:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->attachToActivity(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackActivityHelper;->convertActivityFromTranslucent()V

    .line 59
    return-void
.end method
